import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/view/home/home_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/issue_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(
  RouterRef ref,
) =>
    GoRouter(
      routes: [
        GoRoute(
          path: HomeMode.simple.path,
          name: HomeMode.simple.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HomeScreen(
              mode: HomeMode.simple,
            ),
          ),
          routes: [
            GoRoute(
              path: 'search/detail',
              name: SearchMeetingDetailScreen.screenName,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: SearchMeetingDetailScreen(
                  params: SearchParamsExt.fromUriQuery(state.queryParams['q']),
                ),
              ),
            ),
            GoRoute(
              path: 'search/summary',
              name: SearchMeetingSummaryScreen.screenName,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: SearchMeetingSummaryScreen(
                  params: SearchParamsExt.fromUriQuery(state.queryParams['q']),
                ),
              ),
            ),
            GoRoute(
              path: 'search/speech',
              name: SearchSpeechScreen.screenName,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: SearchSpeechScreen(
                  params: SearchParamsExt.fromUriQuery(state.queryParams['q']),
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
        GoRoute(
          path: HomeMode.full.path,
          name: HomeMode.full.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HomeScreen(
              mode: HomeMode.full,
            ),
          ),
        ),
        GoRoute(
          path: HomeMode.history.path,
          name: HomeMode.history.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HomeScreen(
              mode: HomeMode.history,
            ),
          ),
        ),
      ],
    );
