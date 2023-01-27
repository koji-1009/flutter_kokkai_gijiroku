import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SimpleSearchWidget extends HookConsumerWidget {
  const SimpleSearchWidget({
    super.key,
    required this.submitAction,
  });

  final VoidCallback submitAction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final any = ref.watch(
      searchStateManagerProvider.select((value) => value.any),
    );
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
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: '検索語',
            suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                submitAction();
              },
            ),
          ),
          onChanged: (value) {
            ref.read(searchStateManagerProvider.notifier).updateAny(value);
          },
          onEditingComplete: () {
            submitAction();
          },
        ),
      ),
    );
  }
}
