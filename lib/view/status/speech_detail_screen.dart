import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeechDetailScreen extends HookConsumerWidget {
  const SpeechDetailScreen({
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

    final margin = MediaQuery.of(context).breakpointMargin;

    return Scaffold(
      appBar: AppBar(
        title: Text(speechID),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: margin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Linkify(
                onOpen: (link) => launch(link.url),
                text: '会議録PDF: ${data.pdfURL}',
              ),
              Linkify(
                onOpen: (link) => launch(link.url),
                text: '会議録テキストURL: ${data.meetingURL}',
              ),
              Linkify(
                onOpen: (link) => launch(link.url),
                text: '発言URL: ${data.speechURL}',
              ),
              const Divider(),
              Text('院名: ${data.nameOfHouse}'),
              Text('会議名: ${data.nameOfMeeting}'),
              Text('日付:  ${data.date.yMMMEd}'),
              const Divider(),
              Text('名前: ${data.speaker}(${data.speakerYomi})'),
              Text('所属会派: ${data.speakerGroup}'),
              Text('役割: ${data.speakerRole}'),
              Text('肩書き: ${data.speakerPosition}'),
              const Divider(),
              Text(data.speech),
            ],
          ),
        ),
      ),
    );
  }
}
