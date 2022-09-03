import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/home_search_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MeetingWidget extends ConsumerWidget {
  const MeetingWidget({
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
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '会議名',
            ),
            onChanged: (value) {
              final state = ref.read(homeStateProvider);
              ref.read(homeStateProvider.notifier).state = state.copyWith(
                nameOfMeeting: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '院名',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              DropdownButton<NameOfHouse>(
                value: state.nameOfHouse,
                items: [
                  ...NameOfHouse.values.map(
                    (e) => DropdownMenuItem<NameOfHouse>(
                      value: e,
                      child: Text(e.value),
                    ),
                  ),
                ],
                onChanged: (value) {
                  final state = ref.read(homeStateProvider);
                  ref.read(homeStateProvider.notifier).state = state.copyWith(
                    nameOfHouse: value ?? NameOfHouse.none,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
