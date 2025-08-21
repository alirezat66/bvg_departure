import 'dart:async';

import 'package:bvg_departures/core/di/di.dart';
import 'package:bvg_departures/core/presentation/bloc/app_bloc.dart';
import 'package:bvg_departures/core/presentation/bloc/bloc_observer.dart';
import 'package:bvg_departures/core/presentation/router/router.dart';
import 'package:bvg_departures/core/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      Bloc.observer = AppBlocObserver();
      await setupDI();

      runApp(MyApp(theme: buildLightAppTheme()));
    },
    (error, stack) {
      // TODO: We implement crash reporting here
      debugPrint('Caught error: $error');
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BVG Departures',
      theme: theme,
      routerConfig: appRouter, // from app/router.dart
    );
  }
}
