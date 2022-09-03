import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/presenter/home_search_manager.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModeWidget extends ConsumerWidget {
  const ModeWidget({
    super.key,
    required this.margin,
  });

  final double margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeStateProvider);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: margin,
      ),
      child: Row(
        children: [
          Text(
            '検索対象',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          DropdownButton<SearchMode>(
            value: state.mode,
            items: [
              ...SearchMode.values.map(
                (e) => DropdownMenuItem<SearchMode>(
                  value: e,
                  child: Text(e.value),
                ),
              ),
            ],
            onChanged: (value) {
              final state = ref.read(homeStateProvider);
              ref.read(homeStateProvider.notifier).state = state.copyWith(
                mode: value ?? SearchMode.speech,
              );
            },
          ),
        ],
      ),
    );
  }
}
