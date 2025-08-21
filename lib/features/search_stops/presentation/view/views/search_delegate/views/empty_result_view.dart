import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:flutter/material.dart';

class EmptyResultView extends StatelessWidget {
  const EmptyResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(context.spacing.s24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: context.spacing.s16,
          children: [
            SizedBox(
              width: 48,
              height: 48,
              child: Text(
                '🤔',
                style: context.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              emptyResultText,
              style: context.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
