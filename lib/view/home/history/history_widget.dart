import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/hive/search_history.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/search_params_list.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class HistoryWidget extends ConsumerWidget {
  const HistoryWidget({
    super.key,
  });

  DateFormat get _formatter => DateFormat.yMd().add_Hm();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;
    final box = ref.watch(searchHistoryBoxProvider);

    return ValueListenableBuilder(
      valueListenable: box.listenable(),
      builder: (context, value, child) {
        final histories = [...value.values];
        if (histories.isEmpty) {
          return Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: margin,
                vertical: 16,
              ),
              child: const Text('検索履歴がありません'),
            ),
          );
        }
        return ListView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: margin,
            vertical: 16,
          ),
          itemBuilder: (context, index) {
            final history = histories[index];
            return Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  context.pushNamed(
                    SearchSpeechScreen.screenName,
                    queryParams: {
                      'q': history.params.uriQuery,
                    },
                  );
                },
                onLongPress: () {
                  showDialog(
                    context: context,
                    builder: (context) => SimpleDialog(
                      title: const Text('オプション'),
                      children: [
                        SimpleDialogOption(
                          child: const Text('削除'),
                          onPressed: () async {
                            // delete
                            await box.deleteAt(index);

                            // ignore: use_build_context_synchronously
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SearchParamsList(
                        params: history.params,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '検索日時',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        _formatter.format(history.updatedAt),
                      ),
                      if (history.memo.isNotEmpty) ...[
                        Text(
                          'メモ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          history.memo,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: histories.length,
        );
      },
    );
  }
}
