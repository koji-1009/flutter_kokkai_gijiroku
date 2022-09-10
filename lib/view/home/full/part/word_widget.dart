import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WordWidget extends HookConsumerWidget {
  const WordWidget({
    super.key,
    required this.margin,
  });

  final double margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchStateProvider);
    final wordController = useTextEditingController.fromValue(
      TextEditingValue(
        text: state.any,
      ),
    );

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          child: TextField(
            controller: wordController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '検索語',
            ),
            onChanged: (value) {
              ref.read(searchStateProvider.notifier).updateAny(value);
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
              DropdownButton(
                value: state.searchRange,
                items: [
                  ...SearchRange.values.map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.value),
                    ),
                  ),
                ],
                onChanged: (value) {
                  ref
                      .read(searchStateProvider.notifier)
                      .updateSearchRange(value);
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
            ref
                .read(searchStateProvider.notifier)
                .updateSupplementAndAppendix(value);
          },
        ),
        SwitchListTile(
          title: const Text('目次・索引指定'),
          contentPadding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          value: state.contentsAndIndex,
          onChanged: (value) {
            ref
                .read(searchStateProvider.notifier)
                .updateContentsAndIndex(value);
          },
        ),
        SwitchListTile(
          title: const Text('閉会中指定'),
          contentPadding: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          value: state.closing,
          onChanged: (value) {
            ref.read(searchStateProvider.notifier).updateClosing(value);
          },
        ),
      ],
    );
  }
}
