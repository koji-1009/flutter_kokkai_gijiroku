import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DateWidget extends ConsumerWidget {
  const DateWidget({
    super.key,
    required this.margin,
  });

  final double margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchStateManagerProvider);

    return Column(
      children: [
        InkWell(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: margin,
              vertical: 16,
            ),
            child: Row(
              children: [
                Text(
                  '検索開始日',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Spacer(),
                Text(
                  state.from?.yMMMMEd ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          onTap: () async {
            final now = DateTime.now();
            final selectDate = await showDatePicker(
              context: context,
              initialDate: DateTime.utc(
                2010,
                1,
                1,
              ),
              firstDate: DateTime.utc(1880, 1, 1),
              lastDate: now,
            );

            ref
                .read(searchStateManagerProvider.notifier)
                .updateFrom(selectDate);
          },
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: margin,
              vertical: 16,
            ),
            child: Row(
              children: [
                Text(
                  '検索終了日',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Spacer(),
                Text(
                  state.until?.yMMMMEd ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          onTap: () async {
            final now = DateTime.now();
            final selectDate = await showDatePicker(
              context: context,
              initialDate: now,
              firstDate: DateTime.utc(1881, 1, 1),
              lastDate: now,
            );

            ref
                .read(searchStateManagerProvider.notifier)
                .updateUntil(selectDate);
          },
        ),
      ],
    );
  }
}
