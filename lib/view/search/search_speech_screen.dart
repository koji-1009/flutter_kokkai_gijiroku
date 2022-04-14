import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/utils/infinite_scroll_hooks.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchSpeechScreen extends HookConsumerWidget {
  const SearchSpeechScreen({
    Key? key,
    required this.params,
  }) : super(key: key);

  final Map<String, String> params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;

    final controller = usePagingController<int, SpeechRecord>(
      firstPageKey: 1,
    );

    controller.addPageRequestListener(
      (pageKey) async {
        try {
          final response = await ref.read(apiPresenterProvider).speechList(
                page: pageKey,
                params: params,
              );

          final newItems = response.speechRecord;
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
        title: Text(SearchMode.speech.value),
      ),
      body: Scrollbar(
        child: PagedListView<int, SpeechRecord>.separated(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: margin,
          ),
          pagingController: controller,
          builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (_, item, __) => Column(
              children: [
                InkWell(
                  child: ListTile(
                    title: Text(
                      '${item.speaker}, '
                      '${item.nameOfMeeting}, '
                      '${item.date.yMMMEd}',
                    ),
                    subtitle: Text(
                      item.speech,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  onTap: () {
                    context.pushNamed(
                      'statusSpeech',
                      params: {
                        'speechID': item.speechID,
                      },
                    );
                  },
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
