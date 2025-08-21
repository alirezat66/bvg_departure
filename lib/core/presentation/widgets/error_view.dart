import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String? errorText;
  const ErrorView({super.key, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: context.spacing.s16,
        children: [
          Icon(
            Icons.error_outline,
            size: 48,
            color: context.semantic.fgSystemError,
          ),
          Text(errorText ?? 'Some Error Occurred'),
        ],
      ),
    );
  }
}
