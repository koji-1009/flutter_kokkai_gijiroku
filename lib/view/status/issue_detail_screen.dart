import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/infinite_scroll_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class IssueDetailScreen extends HookConsumerWidget {
  const IssueDetailScreen({
    Key? key,
    required this.issueID,
  }) : super(key: key);

  final String issueID;

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
          final response = await ref.watch(apiPresenterProvider).issueDetail(
                page: pageKey,
                issueID: issueID,
              );

          title.value = response.speechRecord.first.nameOfMeeting;

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
        title: Text(issueID),
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
                    title: Text(item.speaker),
                    subtitle: Text(
                      item.speech,
                      maxLines: 10,
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
