import 'package:bvg_departures/core/presentation/theme/tokens/primitive_colors.dart';
import 'package:flutter/material.dart';

class SemanticColors extends ThemeExtension<SemanticColors> {
  const SemanticColors({
    // Background
    required this.bgPrimary,
    required this.bgSecondary,
    required this.bgTertiary,
    required this.bgInversePrimary,
    required this.bgInverseSecondary,
    required this.bgSystemAttention,
    required this.bgSystemError,
    required this.bgSystemInformative,
    required this.bgSystemNeutral,
    required this.bgSystemSuccess,
    // Border
    required this.borderPrimary,
    required this.borderSecondary,
    // Foreground
    required this.fgDisabled,
    required this.fgPrimary,
    required this.fgSecondary,
    required this.fgTertiary,
    required this.fgInversePrimary,
    required this.fgInverseSecondary,
    required this.fgSystemAttention,
    required this.fgSystemError,
    required this.fgSystemInformative,
    required this.fgSystemNeutral,
    required this.fgSystemSuccess,
    // Interaction
    required this.interactionPrimaryEnabled,
    required this.interactionPrimaryFocused,
    required this.interactionPrimaryHovered,
    required this.interactionPrimaryPressed,
    required this.interactionSecondaryEnabled,
    required this.interactionSecondaryFocused,
    required this.interactionSecondaryHovered,
    required this.interactionSecondaryPressed,
    // Opacity
    required this.opacity8,
    required this.opacity12,
    required this.opacity16,
  });

  // Background
  final Color bgPrimary, bgSecondary, bgTertiary;
  final Color bgInversePrimary, bgInverseSecondary;
  final Color bgSystemAttention,
      bgSystemError,
      bgSystemInformative,
      bgSystemNeutral,
      bgSystemSuccess;

  // Border
  final Color borderPrimary, borderSecondary;

  // Foreground
  final Color fgDisabled, fgPrimary, fgSecondary, fgTertiary;
  final Color fgInversePrimary, fgInverseSecondary;
  final Color fgSystemAttention,
      fgSystemError,
      fgSystemInformative,
      fgSystemNeutral,
      fgSystemSuccess;

  // Interaction
  final Color interactionPrimaryEnabled,
      interactionPrimaryFocused,
      interactionPrimaryHovered,
      interactionPrimaryPressed;
  final Color interactionSecondaryEnabled,
      interactionSecondaryFocused,
      interactionSecondaryHovered,
      interactionSecondaryPressed;

  // Opacity
  final Color opacity8, opacity12, opacity16;

  factory SemanticColors.light() {
    return SemanticColors(
      bgPrimary: PrimitiveColors.baseWhite,
      bgSecondary: PrimitiveColors.grey50,
      bgTertiary: PrimitiveColors.grey100,
      bgInversePrimary: PrimitiveColors.blue900,
      bgInverseSecondary: PrimitiveColors.blue800,

      bgSystemAttention: const Color(0xFFFBF0BC),
      bgSystemError: const Color(0xFFFFE5E8),
      bgSystemInformative: const Color(0xFFEAF3FE),
      bgSystemNeutral: PrimitiveColors.grey100,
      bgSystemSuccess: const Color(0xFFDEF8E3),

      // Border
      borderPrimary: PrimitiveColors.baseBlack,
      borderSecondary: PrimitiveColors.grey100,

      // Foreground
      fgDisabled: PrimitiveColors.baseBlack.withValues(alpha: .30),
      fgPrimary: PrimitiveColors.baseBlack,
      fgSecondary: PrimitiveColors.grey800,
      fgTertiary: PrimitiveColors.grey600,

      fgInversePrimary: PrimitiveColors.baseWhite,
      fgInverseSecondary: PrimitiveColors.grey100,

      // Foreground System
      fgSystemAttention: const Color(0xFFC27500),
      fgSystemError: const Color(0xFFBC1D3B),
      fgSystemInformative: const Color(0xFF0D4FA5),
      fgSystemNeutral: PrimitiveColors.grey600, // = #666F7A
      fgSystemSuccess: const Color(0xFF077237),

      // Interaction (aliases)
      interactionPrimaryEnabled: PrimitiveColors.red600,
      interactionPrimaryFocused: PrimitiveColors.red800,
      interactionPrimaryHovered: PrimitiveColors.red700,
      interactionPrimaryPressed: PrimitiveColors.red700,

      interactionSecondaryEnabled: PrimitiveColors.blue900,
      interactionSecondaryFocused: PrimitiveColors.blue600,
      interactionSecondaryHovered: PrimitiveColors.blue800,
      interactionSecondaryPressed: PrimitiveColors.blue800,

      // Opacity
      opacity8: Colors.black.withValues(alpha: .08),
      opacity12: Colors.black.withValues(alpha: .12),
      opacity16: Colors.black.withValues(alpha: .16),
    );
  }

  get textPrimary => null;

  @override
  SemanticColors copyWith() => this;
  @override
  SemanticColors lerp(covariant SemanticColors? other, double t) => this;
}
