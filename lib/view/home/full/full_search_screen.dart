import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/home/full/part/date_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/full/part/meeting_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/full/part/mode_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/full/part/speaker_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/full/part/word_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _Field {
  mode,
  date,
  word,
  meeting,
  speaker,
}

class FullSearchWidget extends ConsumerWidget {
  const FullSearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final margin = Breakpoint.fromConstraints(constraints).margin;
        return ListView.separated(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 80 + MediaQuery.paddingOf(context).bottom,
          ),
          separatorBuilder: (context, index) => const Gap(16),
          itemCount: _Field.values.length,
          itemBuilder: (context, index) => switch (_Field.values[index]) {
            _Field.mode => ModeWidget(
                margin: margin,
              ),
            _Field.date => DateWidget(
                margin: margin,
              ),
            _Field.word => WordWidget(
                margin: margin,
              ),
            _Field.meeting => MeetingWidget(
                margin: margin,
              ),
            _Field.speaker => SpeakerWidget(
                margin: margin,
              )
          },
        );
      },
    );
  }
}
