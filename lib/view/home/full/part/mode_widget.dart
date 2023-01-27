import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
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
    final mode = ref.watch(
      searchStateManagerProvider.select((value) => value.mode),
    );

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
          DropdownButton(
            value: mode,
            items: [
              ...SearchMode.values.map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.value),
                ),
              ),
            ],
            onChanged: (value) {
              ref.read(searchStateManagerProvider.notifier).updateMode(value);
            },
          ),
        ],
      ),
    );
  }
}
