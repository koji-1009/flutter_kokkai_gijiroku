import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SpeakerWidget extends HookConsumerWidget {
  const SpeakerWidget({
    super.key,
    required this.margin,
  });

  final double margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchStateProvider);
    final speakerController = useTextEditingController.fromValue(
      TextEditingValue(
        text: state.speaker,
      ),
    );
    final speakerPositionController = useTextEditingController.fromValue(
      TextEditingValue(
        text: state.speakerPosition,
      ),
    );
    final speakerGroupController = useTextEditingController.fromValue(
      TextEditingValue(
        text: state.speakerGroup,
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: margin,
      ),
      child: Column(
        children: [
          TextField(
            controller: speakerController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者名',
            ),
            onChanged: (value) {
              ref.read(searchStateProvider.notifier).updateSpeaker(value);
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: speakerPositionController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者肩書き',
            ),
            onChanged: (value) {
              ref
                  .read(searchStateProvider.notifier)
                  .updateSpeakerPosition(value);
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: speakerGroupController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者所属会派',
            ),
            onChanged: (value) {
              ref.read(searchStateProvider.notifier).updateSpeakerGroup(value);
            },
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '発言者役割',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              DropdownButton(
                value: state.speakerRole,
                items: [
                  ...SpeakerRole.values.map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.value),
                    ),
                  ),
                ],
                onChanged: (value) {
                  ref
                      .read(searchStateProvider.notifier)
                      .updateSpeakerRole(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
