import 'package:bvg_departures/core/presentation/theme/app_text_theme.dart';
import 'package:bvg_departures/core/presentation/theme/color_scheme.dart';
import 'package:bvg_departures/core/presentation/theme/tokens/app_shape.dart';
import 'package:bvg_departures/core/presentation/theme/tokens/app_spacing.dart';
import 'package:bvg_departures/core/presentation/theme/tokens/semantic_colors.dart';
import 'package:flutter/material.dart';

ThemeData buildLightAppTheme() {
  final scheme = buildLightColorScheme();
  final semanticColors =
      SemanticColors.light(); // we add it as an extension below
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    textTheme: appTextTheme,
    scaffoldBackgroundColor: scheme.surface,

    extensions: [semanticColors, AppSpacing.light, AppShape.light],
  );
}