import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:bvg_departures/core/data/extention/date_extension.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:flutter/material.dart';

class DepartureTimeInfoWidget extends StatelessWidget {
  const DepartureTimeInfoWidget({super.key, required this.departure});

  final Departure departure;

  @override
  Widget build(BuildContext context) {
    final foregroundColor = departure.delay != null
        ? context.semantic.fgSystemError
        : context.semantic.fgSystemSuccess;
    final backgroundColor = departure.delay != null
        ? context.semantic.bgSystemError
        : context.semantic.bgSystemSuccess;
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(context.shape.small),
      ),
      padding: EdgeInsets.symmetric(horizontal: context.shape.medium),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            departure.when?.formattedTime ?? cancelledText,
            style: context.textTheme.titleSmall?.copyWith(
              color: foregroundColor,
            ),
          ),
          Text(
            departure.when != null
                ? departure.delay != null
                      ? delayText
                      : onTimeText
                : cancelledText,
            style: context.textTheme.labelSmall?.copyWith(
              color: foregroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
