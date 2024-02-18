import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MeetingWidget extends HookConsumerWidget {
  const MeetingWidget({
    super.key,
    required this.margin,
  });

  final double margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchStateManagerProvider);
    final meetingController = useTextEditingController.fromValue(
      TextEditingValue(
        text: state.nameOfMeeting,
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: margin,
      ),
      child: Column(
        children: [
          TextField(
            controller: meetingController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '会議名',
            ),
            onChanged: (value) {
              ref
                  .read(searchStateManagerProvider.notifier)
                  .updateNameOfMeeting(value);
            },
          ),
          const Gap(8),
          Row(
            children: [
              Text(
                '院名',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              DropdownButton(
                value: state.nameOfHouse,
                items: [
                  ...NameOfHouse.values.map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.value),
                    ),
                  ),
                ],
                onChanged: (value) {
                  ref
                      .read(searchStateManagerProvider.notifier)
                      .updateNameOfHouse(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
