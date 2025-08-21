import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:bvg_departures/core/data/model/product_extension.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class DepartureTile extends StatelessWidget {
  final Departure departure;
  const DepartureTile({super.key, required this.departure});

  @override
  Widget build(BuildContext context) {
    final foregroundColor = departure.delay != null
        ? context.semantic.fgSystemError
        : context.semantic.fgSystemSuccess;
    final backgroundColor = departure.delay != null
        ? context.semantic.bgSystemError
        : context.semantic.bgSystemSuccess;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: IntrinsicHeight(
          child: Row(
            children: [
              // Line info with product icon
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: context.shape.extraSmall,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(departure.lineProduct.assetPath),
                        SizedBox(width: context.shape.small),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.shape.small,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: context.semantic.borderPrimary,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              context.shape.small,
                            ),
                          ),
                          child: Text(
                            departure.lineName,
                            style: context.textTheme.labelSmall?.copyWith(
                              color: context.semantic.fgPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      departure.destinationName,
                      style: context.textTheme.titleSmall,
                    ),
                    Wrap(
                      spacing: context.shape.small,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          departure.destinationName,
                          style: context.textTheme.bodyMedium,
                        ),
                        if (departure.platform != null)
                          Text(
                            '• Platform ${departure.platform}',
                            style: context.textTheme.bodyMedium,
                          ),
                      ],
                    ),
                  ],
                ),
              ),

              // Departure details
              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension DateTimeExtension on DateTime {
  String get formattedTime => DateFormat('HH:mm').format(this);
}
