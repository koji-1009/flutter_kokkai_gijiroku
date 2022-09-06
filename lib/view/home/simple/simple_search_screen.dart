import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/home_state.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/home_search_manager.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/date_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/home_app_bar_action.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SimpleSearchScreen extends ConsumerWidget {
  const SimpleSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;

    return Scaffold(
      appBar: AppBar(
        title: const Text('議事録検索'),
        actions: const [
          HomeAppBarAction(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '検索語',
                    ),
                    onChanged: (value) {
                      final state = ref.read(homeStateProvider);
                      ref.read(homeStateProvider.notifier).state =
                          state.copyWith(
                        any: value,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const DateWidget(
                  margin: 16,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('検索'),
        icon: const Icon(Icons.search_outlined),
        onPressed: () {
          final state = ref.read(homeStateProvider);

          if (state.from != null &&
              state.until != null &&
              state.from!.isAfter(state.until!)) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('日付の指定が不正です'),
              ),
            );
            return;
          }
          if (state.any.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('検索語を入力してください'),
              ),
            );
            return;
          }

          context.pushNamed(
            SearchSpeechScreen.screenName,
            queryParams: state.simpleParams.query,
          );
        },
      ),
    );
  }
}
