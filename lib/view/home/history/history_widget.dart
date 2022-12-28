import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/hive/search_history.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
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
              child: ListTile(
                title: Text('ワード: ${history.params.any}'),
                subtitle: Text(
                  _formatter.format(history.updatedAt),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: const Text('オプション'),
                        children: [
                          SimpleDialogOption(
                            child: const Text('削除'),
                            onPressed: () {
                              // delete
                              box.delete(history.indexKey);

                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    );
                  },
                ),
                onTap: () {
                  context.pushNamed(
                    SearchSpeechScreen.screenName,
                    queryParams: history.params.query,
                  );
                },
              ),
            );
          },
          itemCount: histories.length,
        );
      },
    );
  }
}
