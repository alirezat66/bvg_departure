import 'package:flutter/material.dart';

class AppSpacing extends ThemeExtension<AppSpacing> {
  final double s2, s4, s8, s12, s16, s20, s24, s32, s40;
  const AppSpacing({
    required this.s2,
    required this.s4,
    required this.s8,
    required this.s12,
    required this.s16,
    required this.s20,
    required this.s24,
    required this.s32,
    required this.s40,
  });

  static const light = AppSpacing(
    s2: 2,
    s4: 4,
    s8: 8,
    s12: 12,
    s16: 16,
    s20: 20,
    s24: 24,
    s32: 32,
    s40: 40,
  );
  static const dark = light;

  @override
  AppSpacing copyWith() => this;
  @override
  AppSpacing lerp(covariant AppSpacing? other, double t) => this;
}
