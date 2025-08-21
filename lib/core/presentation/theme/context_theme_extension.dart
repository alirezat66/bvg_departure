import 'package:bvg_departures/core/presentation/theme/tokens/app_shape.dart';
import 'package:bvg_departures/core/presentation/theme/tokens/app_spacing.dart';
import 'package:bvg_departures/core/presentation/theme/tokens/semantic_colors.dart';
import 'package:flutter/material.dart';

extension ThemeBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  SemanticColors get semantic => Theme.of(this).extension<SemanticColors>()!;
  AppSpacing get spacing => Theme.of(this).extension<AppSpacing>()!;
  AppShape get shape => Theme.of(this).extension<AppShape>()!;
}

extension ThemeDataX on ThemeData {
  SemanticColors get semantic => extension<SemanticColors>()!;
  AppSpacing get spacing => extension<AppSpacing>()!;
  AppShape get shape => extension<AppShape>()!;
}
