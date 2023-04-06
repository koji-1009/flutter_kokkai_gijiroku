import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/view/home/full/full_search_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/home/history/history_widget.dart';
import 'package:flutter_kokkai_gijiroku/view/home/home_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/home/simple/simple_search_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/router_key.dart';
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
      navigatorKey: rootNavigatorKey,
      routes: $appRoutes,
    );

@TypedShellRoute<HomeShellRoute>(
  routes: [
    TypedGoRoute<SimpleRoute>(
      path: '/',
      routes: [
        TypedGoRoute<SearchMeetingDetailRoute>(
          path: 'search/detail',
        ),
        TypedGoRoute<SearchMeetingSummaryRoute>(
          path: 'search/summary',
        ),
        TypedGoRoute<SearchSpeechRoute>(
          path: 'search/speech',
        ),
        TypedGoRoute<SpeechDetailRoute>(
          path: 'speech/:speechID',
        ),
        TypedGoRoute<IssueDetailRoute>(
          path: 'issue/:issueID',
        ),
      ],
    ),
    TypedGoRoute<FullRoute>(
      path: '/full',
    ),
    TypedGoRoute<HistoryRoute>(
      path: '/history',
    ),
  ],
)
class HomeShellRoute extends ShellRouteData {
  const HomeShellRoute();

  static final $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return HomeScreen(
      child: navigator,
    );
  }
}

class SimpleRoute extends GoRouteData {
  const SimpleRoute();

  static final $navigatorKey = shellNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: SimpleSearchWidget(),
    );
  }
}

class FullRoute extends GoRouteData {
  const FullRoute();

  static final $navigatorKey = shellNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: FullSearchWidget(),
    );
  }
}

class HistoryRoute extends GoRouteData {
  const HistoryRoute();

  static final $navigatorKey = shellNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: HistoryWidget(),
    );
  }
}

class SearchMeetingDetailRoute extends GoRouteData {
  const SearchMeetingDetailRoute({
    this.q = '',
  });

  static final $parentNavigatorKey = rootNavigatorKey;

  final String q;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SearchMeetingDetailScreen(
      params: SearchParamsExt.fromUriQuery(q),
    );
  }
}

class SearchMeetingSummaryRoute extends GoRouteData {
  const SearchMeetingSummaryRoute({
    this.q = '',
  });

  static final $parentNavigatorKey = rootNavigatorKey;

  final String q;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SearchMeetingSummaryScreen(
      params: SearchParamsExt.fromUriQuery(q),
    );
  }
}

class SearchSpeechRoute extends GoRouteData {
  const SearchSpeechRoute({
    this.q = '',
  });

  static final $parentNavigatorKey = rootNavigatorKey;

  final String q;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SearchSpeechScreen(
      params: SearchParamsExt.fromUriQuery(q),
    );
  }
}

class SpeechDetailRoute extends GoRouteData {
  const SpeechDetailRoute({
    required this.speechID,
  });

  static final $parentNavigatorKey = rootNavigatorKey;

  final String speechID;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SpeechDetailScreen(
      speechID: speechID,
    );
  }
}

class IssueDetailRoute extends GoRouteData {
  const IssueDetailRoute({
    required this.issueID,
  });

  static final $parentNavigatorKey = rootNavigatorKey;

  final String issueID;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return IssueDetailScreen(
      issueID: issueID,
    );
  }
}
