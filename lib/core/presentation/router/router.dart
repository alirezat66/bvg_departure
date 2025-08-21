import 'package:bvg_departures/features/departures/presentation/view/pages/departure_page.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/presentation/view/page/search_stops_page.dart';
import 'package:go_router/go_router.dart';

sealed class AppRouteName {
  static const search = 'search';
  static const departures = 'departures';

  static String departuresPath(String stopId) => '/departures/$stopId';
}

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppRouteName.search,
      path: '/',
      pageBuilder: (ctx, state) => NoTransitionPage(child: SearchStopsPage()),
    ),
    GoRoute(
      name: AppRouteName.departures,
      path: '/departures/:stopId',
      pageBuilder: (ctx, state) {
        final stopId = state.pathParameters['stopId']!;
        final stop = state.extra is Stop ? state.extra as Stop : null;
        return NoTransitionPage(
          child: DeparturePage(stopId: stopId, stopName: stop?.name ?? ''),
        );
      },
    ),
  ],
);
