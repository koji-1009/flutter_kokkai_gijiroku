import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/view/status/issue_detail_screen.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SpeechDetailScreen extends HookConsumerWidget {
  const SpeechDetailScreen({
    Key? key,
    required this.speechID,
  }) : super(key: key);

  static String screenName = 'statusSpeech';

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
                onOpen: (link) => launchUrlString(link.url),
                text: '?????????PDF: ${data.pdfURL}',
              ),
              Linkify(
                onOpen: (link) => launchUrlString(link.url),
                text: '?????????????????????URL: ${data.meetingURL}',
              ),
              Linkify(
                onOpen: (link) => launchUrlString(link.url),
                text: '??????URL: ${data.speechURL}',
              ),
              const Divider(),
              SelectableText('??????: ${data.nameOfHouse}\n'
                  '?????????: ${data.nameOfMeeting}\n'
                  '??????:  ${data.date.yMMMEd}'),
              const Divider(),
              SelectableText('??????: ${data.speaker}(${data.speakerYomi})\n'
                  '????????????: ${data.speakerGroup}\n'
                  '??????: ${data.speakerRole}\n'
                  '?????????: ${data.speakerPosition}'),
              const Divider(),
              SelectableText(data.speech),
              const Divider(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
                onPressed: () {
                  context.pushNamed(
                    IssueDetailScreen.screenName,
                    params: {
                      'issueID': data.issueID,
                    },
                  );
                },
                child: const Text('??????'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
