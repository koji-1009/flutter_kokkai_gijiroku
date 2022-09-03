import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/home_search_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SpeakerWidget extends ConsumerWidget {
  const SpeakerWidget({
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
              labelText: '発言者名',
            ),
            onChanged: (value) {
              final state = ref.read(homeStateProvider);
              ref.read(homeStateProvider.notifier).state = state.copyWith(
                speaker: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者肩書き',
            ),
            onChanged: (value) {
              final state = ref.read(homeStateProvider);
              ref.read(homeStateProvider.notifier).state = state.copyWith(
                speakerPosition: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者所属会派',
            ),
            onChanged: (value) {
              final state = ref.read(homeStateProvider);
              ref.read(homeStateProvider.notifier).state = state.copyWith(
                speakerGroup: value,
              );
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
              DropdownButton<SpeakerRole>(
                value: state.speakerRole,
                items: [
                  ...SpeakerRole.values.map(
                    (e) => DropdownMenuItem<SpeakerRole>(
                      value: e,
                      child: Text(e.value),
                    ),
                  ),
                ],
                onChanged: (value) {
                  final state = ref.read(homeStateProvider);
                  ref.read(homeStateProvider.notifier).state = state.copyWith(
                    speakerRole: value ?? SpeakerRole.none,
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
