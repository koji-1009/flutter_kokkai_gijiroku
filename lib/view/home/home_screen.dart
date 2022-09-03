import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/home_state.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/home_search_manager.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/date_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/meeting_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/mode_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/speaker_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/part/word_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/home_app_bar_action.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _Field {
  mode,
  date,
  word,
  meeting,
  speaker,
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;

    return Scaffold(
      appBar: AppBar(
        title: const Text('議事録検索'),
        actions: const [
          HomeAppBarAction(),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
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
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('検索'),
        icon: const Icon(Icons.search_outlined),
        onPressed: () {
          final state = ref.read(homeStateProvider);

          if (state.from != null &&
              state.until != null &&
              state.from!.isAfter(state.until!)) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('日付の指定が不正です'),
              ),
            );
            return;
          }
          if (state.any.isEmpty &&
              state.speaker.isEmpty &&
              state.nameOfMeeting.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('検索語/会議名/発言者名のいずれかを入力してください'),
              ),
            );
            return;
          }

          switch (state.mode) {
            case SearchMode.meetingDetail:
              context.pushNamed(
                SearchMeetingDetailScreen.screenName,
                queryParams: state.params.query,
              );
              break;
            case SearchMode.meetingSummary:
              context.pushNamed(
                SearchMeetingSummaryScreen.screenName,
                queryParams: state.params.query,
              );
              break;
            case SearchMode.speech:
              context.pushNamed(
                SearchSpeechScreen.screenName,
                queryParams: state.params.query,
              );
              break;
          }
        },
      ),
    );
  }
}
