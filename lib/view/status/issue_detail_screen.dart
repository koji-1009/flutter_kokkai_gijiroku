import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SpearchDetailScreen extends HookConsumerWidget {
  const SpearchDetailScreen({
    Key? key,
    required this.speechID,
  }) : super(key: key);

  final String speechID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final request = useMemoized(
      () => ref.watch(apiPresenterProvider).speech(
            speechID: speechID,
          ),
      [speechID],
    );
    final speechResponse = useFuture(request);
    if (speechResponse.hasError) {
      return Scaffold(
        appBar: AppBar(
          title: Text(speechID),
        ),
        body: Center(
          child: Text(
            speechResponse.stackTrace.toString(),
          ),
        ),
      );
    }

    final data = speechResponse.data?.speechRecord.first;
    if (data == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(speechID),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(speechID),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.nameOfHouse),
              Text(data.nameOfMeeting),
              Text(ymdFormatter.format(DateTime.parse(data.date))),
              const Divider(),
              Text(data.speaker),
              Text(data.speakerYomi),
              Text(data.speakerGroup),
              Text(data.speakerRole),
              Text(data.speakerPosition),
              const Divider(),
              Text(data.speech),
            ],
          ),
        ),
      ),
    );
  }
}
