import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/home_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/issue_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
          path: 'search/detail',
          name: 'searchMeetingDetail',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SearchMeetingDetailScreen(
              params: state.queryParams,
            ),
          ),
        ),
        GoRoute(
          path: 'search/summary',
          name: 'searchMeetingSummary',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SearchMeetingSummaryScreen(
              params: state.queryParams,
            ),
          ),
        ),
        GoRoute(
          path: 'search/speech',
          name: 'searchSpeech',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SearchSpeechScreen(
              params: state.queryParams,
            ),
          ),
        ),
        GoRoute(
          path: 'speech/:speechID',
          name: 'statusSpeech',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SpeechDetailScreen(
              speechID: state.params['speechID']!,
            ),
          ),
        ),
        GoRoute(
          path: 'issue/:issueID',
          name: 'statusIssue',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: IssueDetailScreen(
              issueID: state.params['issueID']!,
            ),
          ),
        ),
      ],
    ),
  ],
  urlPathStrategy: UrlPathStrategy.path,
);

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: '国会 議事録検索システム(非公式)',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
      ],
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
