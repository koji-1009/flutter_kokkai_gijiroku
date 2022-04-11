import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/home_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(
        key: state.pageKey,
      ),
      routes: [
        GoRoute(
          path: 'search',
          redirect: (_) => '/',
          routes: [
            GoRoute(
              path: 'detail',
              name: 'meetingDetail',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: SearchMeetingDetailScreen(
                  params: state.queryParams,
                ),
              ),
            ),
            GoRoute(
              path: 'summary',
              name: 'meetingSummary',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: SearchMeetingSummaryScreen(
                  params: state.queryParams,
                ),
              ),
            ),
            GoRoute(
              path: 'speech',
              name: 'speech',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: SearchSpeechScreen(
                  params: state.queryParams,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: '国会 議事録検索システム(非公式)',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.dark,
      ),
    );
  }
}
