import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/date_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/meeting_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/mode_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/speaker_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/word_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _Field {
  mode,
  date,
  word,
  meeting,
  speaker,
}

class FullSearchWidget extends ConsumerWidget {
  const FullSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final margin = Breakpoint.fromConstraints(constraints).margin;
        return ListView.separated(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 80,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemCount: _Field.values.length,
          itemBuilder: (context, index) {
            final field = _Field.values[index];
            switch (field) {
              case _Field.mode:
                return ModeWidget(
                  margin: margin,
                );
              case _Field.date:
                return DateWidget(
                  margin: margin,
                );
              case _Field.word:
                return WordWidget(
                  margin: margin,
                );
              case _Field.meeting:
                return MeetingWidget(
                  margin: margin,
                );
              case _Field.speaker:
                return SpeakerWidget(
                  margin: margin,
                );
            }
          },
        );
      },
    );
  }
}
