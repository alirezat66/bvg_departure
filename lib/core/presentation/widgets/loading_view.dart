import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  final String? loadingText;
  const LoadingView({super.key, this.loadingText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: context.spacing.s16,
        children: [
          CircularProgressIndicator.adaptive(),
          Text(loadingText ?? 'Loading'),
        ],
      ),
    );
  }
}
