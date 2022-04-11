import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/infinite_scroll_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchMeetingDetailScreen extends HookConsumerWidget {
  const SearchMeetingDetailScreen({
    Key? key,
    required this.params,
  }) : super(key: key);

  final Map<String, String> params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = usePagingController<int, MeetingRecordDetail>(
      firstPageKey: 1,
    );

    controller.addPageRequestListener(
      (pageKey) async {
        try {
          final response = await ref.read(apiPresenterProvider).meetingDetail(
                page: pageKey,
                params: params,
              );

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
      appBar: AppBar(),
      body: PagedListView<int, MeetingRecordDetail>(
        pagingController: controller,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (_, item, __) => ListTile(
            title: Text(item.nameOfMeeting),
            subtitle: SelectableText(item.pdfURL),

          ),
        ),
      ),
    );
  }
}
