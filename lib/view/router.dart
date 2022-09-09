import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/home/home_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/issue_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider(
  (_) => GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
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
  ),
);
