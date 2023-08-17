import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_state.dart';
import 'package:flutter_kokkai_gijiroku/presenter/search_state_manager.dart';
import 'package:flutter_kokkai_gijiroku/view/router.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/home_app_bar_action.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum HomeMode {
  simple('/'),
  full('/full'),
  history('/history');

  final String path;

  const HomeMode(this.path);
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  /// get current HomeMode from path
  HomeMode _getHomeMode(BuildContext context) {
    final path = GoRouterState.of(context).uri;
    return HomeMode.values.lastWhere(
      (e) => '/${path.pathSegments.firstOrNull ?? ''}' == e.path,
      orElse: () => HomeMode.simple,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = context.breakpointScreenSize;
    final mode = _getHomeMode(context);
    final index = HomeMode.values.indexOf(mode);

    final FloatingActionButton? actionButton;
    switch (mode) {
      case HomeMode.simple:
        actionButton = null;
      case HomeMode.full:
        actionButton = FloatingActionButton.extended(
          label: const Text('検索'),
          icon: const Icon(Icons.search_outlined),
          tooltip: '検索',
          onPressed: () {
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
                SearchMeetingDetailRoute(
                  q: state.fullParams.uriQuery,
                ).push(context);
              case SearchMode.meetingSummary:
                SearchMeetingSummaryRoute(
                  q: state.fullParams.uriQuery,
                ).push(context);
              case SearchMode.speech:
                SearchSpeechRoute(
                  q: state.fullParams.uriQuery,
                ).push(context);
            }
          },
        );
      case HomeMode.history:
        actionButton = null;
    }

    if (screenSize == BreakpointScreenSize.compact) {
      /// smart phone
      return Scaffold(
        appBar: AppBar(
          title: const Text('議事録検索'),
          actions: const [
            HomeAppBarAction(),
          ],
        ),
        body: child,
        floatingActionButton: actionButton,
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'キーワード',
              tooltip: 'キーワード検索',
            ),
            NavigationDestination(
              icon: Icon(Icons.text_snippet),
              label: '条件',
              tooltip: '条件検索',
            ),
            NavigationDestination(
              icon: Icon(Icons.history),
              label: '履歴',
              tooltip: '検索履歴',
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
      );
    }

    final isExtended = screenSize == BreakpointScreenSize.expanded;
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
            extended: isExtended,
            labelType: isExtended ? null : NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.search),
                label: Text('キーワード'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.manage_search),
                label: Text('条件'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.history),
                label: Text('検索'),
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
            child: child,
          ),
        ],
      ),
      floatingActionButton: actionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void _navigate({
    required BuildContext context,
    required int index,
  }) {
    final mode = HomeMode.values[index];
    switch (mode) {
      case HomeMode.simple:
        const SimpleRoute().go(context);
      case HomeMode.full:
        const FullRoute().go(context);
      case HomeMode.history:
        const HistoryRoute().go(context);
    }
  }
}
