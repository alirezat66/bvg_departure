import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';

import 'package:bvg_departures/features/departures/presentation/view/widgets/departure_tile/life_info_widget.dart';
import 'package:flutter/material.dart';

class DepartureInfoWidget extends StatelessWidget {
  const DepartureInfoWidget({super.key, required this.departure});

  final Departure departure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: context.shape.extraSmall,
      children: [
        LineInfoWidget(departure: departure),
        Text(departure.destinationName, style: context.textTheme.titleSmall),
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
    );
  }
}
