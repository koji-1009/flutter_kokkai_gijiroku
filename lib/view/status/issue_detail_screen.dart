import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/model/source/data_source_issue.dart';
import 'package:flutter_kokkai_gijiroku/view/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paging_view/paging_view.dart';

class IssueDetailScreen extends ConsumerWidget {
  const IssueDetailScreen({
    super.key,
    required this.issueID,
  });

  final String issueID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = context.breakpointMargin;
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
        bottom: false,
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
              SpeechDetailRoute(
                speechID: element.speechID,
              ).push(context);
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
