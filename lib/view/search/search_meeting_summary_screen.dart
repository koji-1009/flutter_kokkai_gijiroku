import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/api_exception.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/utils/infinite_scroll_hooks.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:sticky_headers/sticky_headers.dart';

class SearchMeetingSummaryScreen extends HookConsumerWidget {
  const SearchMeetingSummaryScreen({
    Key? key,
    required this.params,
  }) : super(key: key);

  static String screenName = 'searchMeetingSummary';

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
        } on ApiExceptionError catch (error) {
          controller.error = error.message;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error.message),
            ),
          );
        } on Exception catch (error) {
          controller.error = error;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error.toString()),
            ),
          );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title.value),
      ),
      body: PagedListView<int, MeetingRecordSummary>(
        pagingController: controller,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (_, item, __) => StickyHeader(
            header: Container(
              color: Theme.of(context).colorScheme.surface,
              padding: EdgeInsets.symmetric(
                horizontal: margin,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.nameOfHouse),
                  Text(item.nameOfMeeting),
                  Text(item.date.yMMMEd),
                ],
              ),
            ),
            content: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, i) {
                final e = item.speechRecord[i];

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
              itemCount: item.speechRecord.length,
            ),
          ),
        ),
      ),
    );
  }
}
