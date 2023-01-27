import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_state.dart';
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

enum HomeMode {
  simple('/', 'homeScreenSimple'),
  full('/full', 'homeScreenFull'),
  history('/history', 'homeScreenHistory');

  final String path;
  final String name;

  const HomeMode(this.path, this.name);
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
    required this.mode,
  });

  final HomeMode mode;

  int get index => HomeMode.values.indexOf(mode);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).breakpointScreenSize;

    final Widget body;
    final FloatingActionButton? actionButton;

    switch (mode) {
      case HomeMode.simple:
        body = SimpleSearchWidget(
          submitAction: () {
            final state = ref.read(searchStateManagerProvider);
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
                'q': SearchParams(
                  any: text,
                ).uriQuery,
              },
            );
          },
        );
        actionButton = null;
        break;
      case HomeMode.full:
        action() {
          final state = ref.read(searchStateManagerProvider);

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
                queryParams: {
                  'q': state.fullParams.uriQuery,
                },
              );
              break;
            case SearchMode.meetingSummary:
              context.pushNamed(
                SearchMeetingSummaryScreen.screenName,
                queryParams: {
                  'q': state.fullParams.uriQuery,
                },
              );
              break;
            case SearchMode.speech:
              context.pushNamed(
                SearchSpeechScreen.screenName,
                queryParams: {
                  'q': state.fullParams.uriQuery,
                },
              );
              break;
          }
        }
        body = const FullSearchWidget();
        actionButton = FloatingActionButton.extended(
          label: const Text('検索'),
          icon: const Icon(Icons.search_outlined),
          tooltip: '検索',
          onPressed: action,
        );
        break;
      case HomeMode.history:
        body = const HistoryWidget();
        actionButton = null;
        break;
    }

    if (screenSize <= BreakpointScreenSize.extraSmall) {
      /// smart phone
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
          currentIndex: index,
          onTap: (index) {
            _navigate(
              context: context,
              index: index,
            );
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
              selectedIndex: index,
              onDestinationSelected: (index) {
                _navigate(
                  context: context,
                  index: index,
                );
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

  void _navigate({
    required BuildContext context,
    required int index,
  }) {
    final mode = HomeMode.values[index];
    context.goNamed(mode.name);
  }
}
