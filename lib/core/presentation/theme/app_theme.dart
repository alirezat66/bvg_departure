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
    iconButtonTheme: iconButtonThemeData(semanticColors),
    extensions: [semanticColors, AppSpacing.light, AppShape.light],
  );
}

IconButtonThemeData iconButtonThemeData(SemanticColors semanticColors) {
  return IconButtonThemeData(
    style: ButtonStyle(
      minimumSize: const WidgetStatePropertyAll(Size(48, 48)),
      iconSize: const WidgetStatePropertyAll(24),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return semanticColors.interactionSecondaryPressed;
        }
        if (states.contains(WidgetState.hovered)) {
          return semanticColors.interactionSecondaryHovered;
        }
        if (states.contains(WidgetState.focused)) {
          return semanticColors.interactionSecondaryFocused;
        }
        return semanticColors.fgPrimary;
      }),
    ),
  );
}
