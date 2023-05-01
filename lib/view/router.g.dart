// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeShellRoute,
    ];

RouteBase get $homeShellRoute => ShellRouteData.$route(
      factory: $HomeShellRouteExtension._fromState,
      navigatorKey: HomeShellRoute.$navigatorKey,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: $SimpleRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'search/detail',
              factory: $SearchMeetingDetailRouteExtension._fromState,
              parentNavigatorKey: SearchMeetingDetailRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'search/summary',
              factory: $SearchMeetingSummaryRouteExtension._fromState,
              parentNavigatorKey: SearchMeetingSummaryRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'search/speech',
              factory: $SearchSpeechRouteExtension._fromState,
              parentNavigatorKey: SearchSpeechRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'speech/:speechID',
              factory: $SpeechDetailRouteExtension._fromState,
              parentNavigatorKey: SpeechDetailRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'issue/:issueID',
              factory: $IssueDetailRouteExtension._fromState,
              parentNavigatorKey: IssueDetailRoute.$parentNavigatorKey,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/full',
          factory: $FullRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/history',
          factory: $HistoryRouteExtension._fromState,
        ),
      ],
    );

extension $HomeShellRouteExtension on HomeShellRoute {
  static HomeShellRoute _fromState(GoRouterState state) =>
      const HomeShellRoute();
}

extension $SimpleRouteExtension on SimpleRoute {
  static SimpleRoute _fromState(GoRouterState state) => const SimpleRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $SearchMeetingDetailRouteExtension on SearchMeetingDetailRoute {
  static SearchMeetingDetailRoute _fromState(GoRouterState state) =>
      SearchMeetingDetailRoute(
        q: state.queryParams['q'] ?? '',
      );

  String get location => GoRouteData.$location(
        '/search/detail',
        queryParams: {
          if (q != '') 'q': q,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $SearchMeetingSummaryRouteExtension on SearchMeetingSummaryRoute {
  static SearchMeetingSummaryRoute _fromState(GoRouterState state) =>
      SearchMeetingSummaryRoute(
        q: state.queryParams['q'] ?? '',
      );

  String get location => GoRouteData.$location(
        '/search/summary',
        queryParams: {
          if (q != '') 'q': q,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $SearchSpeechRouteExtension on SearchSpeechRoute {
  static SearchSpeechRoute _fromState(GoRouterState state) => SearchSpeechRoute(
        q: state.queryParams['q'] ?? '',
      );

  String get location => GoRouteData.$location(
        '/search/speech',
        queryParams: {
          if (q != '') 'q': q,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $SpeechDetailRouteExtension on SpeechDetailRoute {
  static SpeechDetailRoute _fromState(GoRouterState state) => SpeechDetailRoute(
        speechID: state.params['speechID']!,
      );

  String get location => GoRouteData.$location(
        '/speech/${Uri.encodeComponent(speechID)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $IssueDetailRouteExtension on IssueDetailRoute {
  static IssueDetailRoute _fromState(GoRouterState state) => IssueDetailRoute(
        issueID: state.params['issueID']!,
      );

  String get location => GoRouteData.$location(
        '/issue/${Uri.encodeComponent(issueID)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $FullRouteExtension on FullRoute {
  static FullRoute _fromState(GoRouterState state) => const FullRoute();

  String get location => GoRouteData.$location(
        '/full',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $HistoryRouteExtension on HistoryRoute {
  static HistoryRoute _fromState(GoRouterState state) => const HistoryRoute();

  String get location => GoRouteData.$location(
        '/history',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'7a148586d383d01203f906b7c59e315d16a0eb57';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
