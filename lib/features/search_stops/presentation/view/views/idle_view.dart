import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:flutter/material.dart';

class IdleView extends StatelessWidget {
  const IdleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 24, 24, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              // Hero block
              Text('👀', style: context.textTheme.displayLarge),
              Text(idleTitle, style: context.textTheme.displayLarge),
              Text(idleTitleDescription, style: context.textTheme.bodyLarge),
              Text(idleHighLight, style: context.textTheme.titleSmall),
              Text(
                idleHighLightDescription,
                style: context.textTheme.bodyLarge,
              ),
              Text(idleHighLight2, style: context.textTheme.titleSmall),
              Text(
                idleHighLightDescription2,
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
