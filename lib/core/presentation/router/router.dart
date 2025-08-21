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
  ],
);
