import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_state.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:flutter_kokkai_gijiroku/view/home/full/full_search_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/home/history/history_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/simple/simple_search_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/home_app_bar_action.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _BodyMode {
  simple,
  full,
  history,
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).breakpointScreenSize;

    final pageIndex = useState(0);
    final mode = _BodyMode.values[pageIndex.value];

    final Widget body;
    final VoidCallback action;

    switch (mode) {
      case _BodyMode.simple:
        body = const SimpleSearchWidget();
        action = () {
          final state = ref.read(searchStateProvider);
          final text = state.any;

          if (text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('検索語を入力してください'),
              ),
            );
            return;
          }

          context.pushNamed(
            SearchSpeechScreen.screenName,
            queryParams: {
              'any': text,
            },
          );
        };
        break;
      case _BodyMode.full:
        body = const FullSearchWidget();
        action = () {
          final state = ref.read(searchStateProvider);

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
                queryParams: state.fullParams.query,
              );
              break;
            case SearchMode.meetingSummary:
              context.pushNamed(
                SearchMeetingSummaryScreen.screenName,
                queryParams: state.fullParams.query,
              );
              break;
            case SearchMode.speech:
              context.pushNamed(
                SearchSpeechScreen.screenName,
                queryParams: state.fullParams.query,
              );
              break;
          }
        };
        break;
      case _BodyMode.history:
        body = const HistoryWidget();
        action = () {};
        break;
    }

    final actionButton = FloatingActionButton.extended(
      label: const Text('検索'),
      icon: const Icon(Icons.search_outlined),
      tooltip: '検索',
      onPressed: action,
    );

    if (screenSize <= BreakpointScreenSize.extraSmall) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('議事録検索'),
          actions: const [
            HomeAppBarAction(),
          ],
        ),
        body: body,
        floatingActionButton: actionButton,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
              tooltip: 'キーワード検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet),
              label: '',
              tooltip: '条件検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: '',
              tooltip: '検索履歴',
            ),
          ],
          currentIndex: pageIndex.value,
          onTap: (index) {
            pageIndex.value = index;
          },
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('議事録検索'),
          actions: const [
            HomeAppBarAction(),
          ],
        ),
        body: Row(
          children: [
            NavigationRail(
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.search),
                  label: Text('キーワード検索'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.manage_search),
                  label: Text('条件検索'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.history),
                  label: Text('検索履歴'),
                ),
              ],
              selectedIndex: pageIndex.value,
              onDestinationSelected: (index) {
                pageIndex.value = index;
              },
            ),
            Expanded(
              child: body,
            ),
          ],
        ),
        floatingActionButton: actionButton,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
    }
  }
}
