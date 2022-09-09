import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SimpleSearchWidget extends HookConsumerWidget {
  const SimpleSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final any = ref.watch(searchStateProvider.select((value) => value.any));
    final wordController = useTextEditingController.fromValue(
      TextEditingValue(
        text: any,
      ),
    );

    return BreakpointWidget(
      child: Center(
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
    );
  }
}
