import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme appTextTheme = GoogleFonts.interTextTheme(
  const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 40,
      height: 48 / 40,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 36,
      height: 42 / 36,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 32,
      height: 38 / 32,
    ),
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 28,
      height: 32 / 28,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 24,
      height: 28 / 24,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 24 / 20,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24,
      height: 28 / 24,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 24 / 20,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 24 / 16,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 20 / 14,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 16 / 12,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 24 / 16,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 20 / 14,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 16 / 12,
    ),
  ),
).apply(fontFamily: 'Inter');
