import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/source/data_source_meeting_summary.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paging_view/paging_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

class SearchMeetingSummaryScreen extends HookConsumerWidget {
  const SearchMeetingSummaryScreen({
    super.key,
    required this.query,
  });

  static String screenName = 'searchMeetingSummary';

  final Map<String, String> query;

  SearchParams get params => SearchParams.fromJson(query);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;
    final dataSource = ref.watch(
      dataSourceMeetingSummaryProvider(params),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          SearchMode.meetingSummary.value,
        ),
      ),
      body: SafeArea(
        child: PagingList<int, MeetingRecordSummary>(
          dataSource: dataSource,
          builder: (context, element, index) => StickyHeader(
            header: Container(
              color: Theme.of(context).colorScheme.surface,
              padding: EdgeInsets.symmetric(
                horizontal: margin,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(element.nameOfHouse),
                  Text(element.nameOfMeeting),
                  Text(element.date.yMMMEd),
                ],
              ),
            ),
            content: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, i) {
                final e = element.speechRecord[i];

                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: margin,
                  ),
                  title: Text(e.speaker),
                  subtitle: Text(e.speechID),
                  onTap: () {
                    context.pushNamed(
                      SpeechDetailScreen.screenName,
                      params: {
                        'speechID': e.speechID,
                      },
                    );
                  },
                );
              },
              itemCount: element.speechRecord.length,
            ),
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
