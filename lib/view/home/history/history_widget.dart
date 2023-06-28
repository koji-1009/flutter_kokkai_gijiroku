import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/memo_result.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/hive/search_history.dart';
import 'package:flutter_kokkai_gijiroku/view/router.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/memo_edit_dialog.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/search_params_list.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class HistoryWidget extends ConsumerWidget {
  const HistoryWidget({super.key});

  DateFormat get _formatter => DateFormat.yMd().add_Hm();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = context.breakpointMargin;
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
                  SearchSpeechRoute(
                    q: history.params.uriQuery,
                  ).push(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
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
                              const SizedBox(
                                height: 8,
                              ),
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
                      Column(
                        children: [
                          IconButton(
                            tooltip: 'メモの編集',
                            onPressed: () async {
                              final result = await showDialog<MemoResult?>(
                                context: context,
                                builder: (context) => MemoEditDialog(
                                  memo: history.memo,
                                ),
                              );
                              if (result == null) {
                                return;
                              }

                              return switch (result) {
                                MemoResultSuccess(memo: final memo) =>
                                  await box.putAt(
                                    index,
                                    SearchHistory(
                                      updatedAt: DateTime.now(),
                                      memo: memo,
                                      params: history.params,
                                    ),
                                  ),
                                MemoResultCancel() => null,
                              };
                            },
                            icon: const Icon(Icons.edit),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          IconButton(
                            tooltip: '履歴の削除',
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('履歴の削除'),
                                  content: const Text('この操作は取り消せません。'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('キャンセル'),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        Navigator.of(context).pop();

                                        await box.deleteAt(index);
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor:
                                            Theme.of(context).colorScheme.error,
                                      ),
                                      child: const Text('削除する'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: const Icon(Icons.delete_forever),
                          ),
                        ],
                      ),
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
