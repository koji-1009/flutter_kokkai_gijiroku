import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:flutter_kokkai_gijiroku/view/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SimpleSearchWidget extends HookConsumerWidget {
  const SimpleSearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = context.breakpointMargin;

    final any = ref.watch(
      searchStateManagerProvider.select((value) => value.any),
    );
    final wordController = useTextEditingController.fromValue(
      TextEditingValue(
        text: any,
      ),
    );
    searchAction() {
      final state = ref.read(searchStateManagerProvider);
      final text = state.any;

      if (text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('検索語を入力してください'),
          ),
        );
        return;
      }

      SearchSpeechRoute(
        q: SearchParams(
          any: text,
        ).uriQuery,
      ).push(context);
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: margin,
        vertical: 16,
      ),
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
              onPressed: searchAction,
            ),
          ),
          onChanged: (value) {
            ref.read(searchStateManagerProvider.notifier).updateAny(value);
          },
          onEditingComplete: searchAction,
        ),
      ),
    );
  }
}
