import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/utils/infinite_scroll_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchMeetingSummaryScreen extends HookConsumerWidget {
  const SearchMeetingSummaryScreen({
    Key? key,
    required this.params,
  }) : super(key: key);

  final Map<String, String> params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;
    final title = useState('');

    final controller = usePagingController<int, MeetingRecordSummary>(
      firstPageKey: 1,
    );

    controller.addPageRequestListener(
      (pageKey) async {
        try {
          final response =
              await ref.read(apiPresenterProvider).meetingSummaryList(
                    page: pageKey,
                    params: params,
                  );

          title.value = '総結果件数: ${response.numberOfRecords}';
          final newItems = response.meetingRecord;
          final nextPageKey = response.nextRecordPosition;
          if (nextPageKey == null) {
            controller.appendLastPage(newItems);
          } else {
            controller.appendPage(newItems, nextPageKey);
          }
        } catch (error) {
          controller.error = error;
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title.value),
      ),
      body: Scrollbar(
        child: PagedListView<int, MeetingRecordSummary>.separated(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: margin,
          ),
          pagingController: controller,
          builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (_, item, __) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item.nameOfHouse),
                          Text(item.nameOfMeeting),
                          Text(item.date.yMMMEd),
                        ],
                      ),
                    ],
                  ),
                ),
                ...item.speechRecord.map(
                  (e) => InkWell(
                    child: ListTile(
                      title: Text(e.speaker),
                      subtitle: Text(e.speechID),
                    ),
                    onTap: () {
                      context.pushNamed(
                        'statusSpeech',
                        params: {
                          'speechID': e.speechID,
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}
