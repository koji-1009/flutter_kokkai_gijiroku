import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/about_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/home_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/issue_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'about',
          name: AboutScreen.screenName,
          builder: (context, state) => const AboutScreen(),
        ),
        GoRoute(
          path: 'search/detail',
          name: SearchMeetingDetailScreen.screenName,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SearchMeetingDetailScreen(
              params: state.queryParams,
            ),
          ),
        ),
        GoRoute(
          path: 'search/summary',
          name: SearchMeetingSummaryScreen.screenName,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SearchMeetingSummaryScreen(
              params: state.queryParams,
            ),
          ),
        ),
        GoRoute(
          path: 'search/speech',
          name: SearchSpeechScreen.screenName,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SearchSpeechScreen(
              params: state.queryParams,
            ),
          ),
        ),
        GoRoute(
          path: 'speech/:speechID',
          name: SpeechDetailScreen.screenName,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SpeechDetailScreen(
              speechID: state.params['speechID']!,
            ),
          ),
        ),
        GoRoute(
          path: 'issue/:issueID',
          name: IssueDetailScreen.screenName,
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
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: '?????? ???????????????????????????(?????????)',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
      ],
      theme: () {
        final base = ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.teal,
          brightness: Brightness.light,
        );

        return base.copyWith(
          textTheme: GoogleFonts.mPlus1pTextTheme(base.textTheme),
        );
      }(),
      darkTheme: () {
        final base = ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.teal,
          brightness: Brightness.dark,
        );

        return base.copyWith(
          textTheme: GoogleFonts.mPlus1pTextTheme(base.textTheme),
        );
      }(),
    );
  }
}
