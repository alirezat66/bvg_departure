import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:flutter/material.dart';

class DepartureEmptyView extends StatelessWidget {
  const DepartureEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(departureEmptyText, style: context.textTheme.titleMedium),
          Text(departureEmptyDescription, style: context.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
