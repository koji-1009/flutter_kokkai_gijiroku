import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/home_search_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WordWidget extends ConsumerWidget {
  const WordWidget({
    super.key,
    required this.margin,
  });

  final double margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeStateProvider);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: margin,
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
              ref.read(homeStateProvider.notifier).state = state.copyWith(
                any: value,
              );
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          child: Row(
            children: [
              const Text('検索対象'),
              const Spacer(),
              DropdownButton<SearchRange>(
                value: state.searchRange,
                items: [
                  ...SearchRange.values.map(
                    (e) => DropdownMenuItem<SearchRange>(
                      value: e,
                      child: Text(e.value),
                    ),
                  ),
                ],
                onChanged: (value) {
                  final state = ref.read(homeStateProvider);
                  ref.read(homeStateProvider.notifier).state = state.copyWith(
                    searchRange: value ?? SearchRange.none,
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SwitchListTile(
          title: const Text('追録・附録指定'),
          contentPadding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          value: state.supplementAndAppendix,
          onChanged: (value) {
            final state = ref.read(homeStateProvider);
            ref.read(homeStateProvider.notifier).state = state.copyWith(
              supplementAndAppendix: value,
            );
          },
        ),
        SwitchListTile(
          title: const Text('目次・索引指定'),
          contentPadding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          value: state.contentsAndIndex,
          onChanged: (value) {
            final state = ref.read(homeStateProvider);
            ref.read(homeStateProvider.notifier).state = state.copyWith(
              contentsAndIndex: value,
            );
          },
        ),
        SwitchListTile(
          title: const Text('閉会中指定'),
          contentPadding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          value: state.closing,
          onChanged: (value) {
            final state = ref.read(homeStateProvider);
            ref.read(homeStateProvider.notifier).state = state.copyWith(
              closing: value,
            );
          },
        ),
      ],
    );
  }
}
