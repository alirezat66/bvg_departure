import 'package:bvg_departures/core/presentation/theme/tokens/primitive_colors.dart';
import 'package:flutter/material.dart';

ColorScheme buildLightColorScheme() {
  return ColorScheme(
    brightness: Brightness.light,

    primary: PrimitiveColors.blue600,
    onPrimary: PrimitiveColors.baseWhite,
    primaryContainer: PrimitiveColors.blue800,
    onPrimaryContainer: PrimitiveColors.baseWhite,

    secondary: PrimitiveColors.red600,
    onSecondary: PrimitiveColors.baseWhite,
    secondaryContainer: PrimitiveColors.red700,
    onSecondaryContainer: PrimitiveColors.baseWhite,

    surface: PrimitiveColors.baseWhite,
    onSurface: PrimitiveColors.baseBlack,
    surfaceContainerHighest: PrimitiveColors.grey50,
    onSurfaceVariant: PrimitiveColors.grey800,

    error: PrimitiveColors.red600,
    onError: PrimitiveColors.baseWhite,
    errorContainer: PrimitiveColors.red700,
    onErrorContainer: PrimitiveColors.baseWhite,

    outline: PrimitiveColors.grey300,
    outlineVariant: PrimitiveColors.grey100,

    inverseSurface: PrimitiveColors.blue900,
    onInverseSurface: PrimitiveColors.baseWhite,
    inversePrimary: PrimitiveColors.blue600,

    // Misc
    shadow: Colors.black.withValues(alpha: .16),
    scrim: Colors.black.withValues(alpha: .32),
    tertiary: PrimitiveColors.grey600,
    onTertiary: PrimitiveColors.baseWhite,
    tertiaryContainer: PrimitiveColors.grey100,
    onTertiaryContainer: PrimitiveColors.grey800,
  );
}
