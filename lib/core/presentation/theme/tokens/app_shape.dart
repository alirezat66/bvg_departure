import 'package:flutter/material.dart';

class AppShape extends ThemeExtension<AppShape> {
  const AppShape({
    required this.none,
    required this.extraSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.rounded,
  });
  final double none, extraSmall, small, medium, large, rounded;

  static const light = AppShape(
    none: 0,
    extraSmall: 2,
    small: 4,
    medium: 8,
    large: 12,
    rounded: 1000,
  );
  static const dark = light;
  @override
  AppShape copyWith() => this;
  @override
  AppShape lerp(covariant AppShape? other, double t) => this;
}
