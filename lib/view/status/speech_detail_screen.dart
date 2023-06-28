import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/view/router.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SpeechDetailScreen extends ConsumerWidget {
  const SpeechDetailScreen({
    super.key,
    required this.speechID,
  });

  final String speechID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speechResponse = ref.watch(
      speechDetailProvider(
        speechID: speechID,
      ),
    );
    if (speechResponse.hasError) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('発言詳細'),
        ),
        body: Center(
          child: Text(
            speechResponse.stackTrace.toString(),
          ),
        ),
      );
    }

    final data = speechResponse.value?.speechRecord.first;
    if (data == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('発言詳細'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final margin = context.breakpointMargin;

    return Scaffold(
      appBar: AppBar(
        title: const Text('発言詳細'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: margin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Linkify(
                  onOpen: (link) => launchUrlString(link.url),
                  text: '会議録PDF: ${data.pdfURL}',
                ),
                Linkify(
                  onOpen: (link) => launchUrlString(link.url),
                  text: '会議録テキストURL: ${data.meetingURL}',
                ),
                Linkify(
                  onOpen: (link) => launchUrlString(link.url),
                  text: '発言URL: ${data.speechURL}',
                ),
                const SizedBox(
                  height: 16,
                ),
                SelectableText('院名: ${data.nameOfHouse}\n'
                    '会議名: ${data.nameOfMeeting}\n'
                    '日付:  ${data.date.yMMMEd}'),
                const SizedBox(
                  height: 16,
                ),
                SelectableText('名前: ${data.speaker}(${data.speakerYomi})\n'
                    '所属会派: ${data.speakerGroup}\n'
                    '役割: ${data.speakerRole}\n'
                    '肩書き: ${data.speakerPosition}'),
                const SizedBox(
                  height: 16,
                ),
                SelectableText(data.speech),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                  ),
                  onPressed: () {
                    IssueDetailRoute(
                      issueID: data.issueID,
                    ).push(context);
                  },
                  child: const Text('会議'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
