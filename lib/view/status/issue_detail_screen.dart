import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/model/source/data_source_issue.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paging_view/paging_view.dart';

class IssueDetailScreen extends ConsumerWidget {
  const IssueDetailScreen({
    super.key,
    required this.issueID,
  });

  static String screenName = 'statusIssue';

  final String issueID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;
    final dataSource = ref.watch(
      dataSourceIssueProvider(
        issueID: issueID,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('会議録詳細'),
      ),
      body: SafeArea(
        child: PagingList<int, SpeechRecord>(
          dataSource: dataSource,
          builder: (context, element, index) => InkWell(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: margin,
              ),
              title: Text(element.speaker),
              subtitle: Text(
                element.speech,
                maxLines: 999,
              ),
            ),
            onTap: () {
              context.pushNamed(
                SpeechDetailScreen.screenName,
                params: {
                  'speechID': element.speechID,
                },
              );
            },
          ),
          initialLoadingWidget: const Center(
            child: CircularProgressIndicator(),
          ),
          appendLoadingWidget: const Center(
            child: CircularProgressIndicator(),
          ),
          errorBuilder: (context, e) => Center(
            child: Text('$e'),
          ),
          emptyWidget: const Center(
            child: Text('検索結果が見つかりませんでした。'),
          ),
        ),
      ),
    );
  }
}
