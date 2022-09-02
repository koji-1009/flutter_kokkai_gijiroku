import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/api_exception.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/utils/infinite_scroll_hooks.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchSpeechScreen extends HookConsumerWidget {
  const SearchSpeechScreen({
    super.key,
    required this.params,
  });

  static String screenName = 'searchSpeech';

  final Map<String, String> params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;
    final title = useState('');

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

          title.value = '総結果件数: ${response.numberOfRecords}';
          final newItems = response.speechRecord;
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
      body: SafeArea(
        child: PagedListView<int, SpeechRecord>(
          pagingController: controller,
          builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (_, item, __) => ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: margin,
                vertical: 8,
              ),
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
              onTap: () {
                context.pushNamed(
                  SpeechDetailScreen.screenName,
                  params: {
                    'speechID': item.speechID,
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
