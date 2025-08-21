import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:bvg_departures/core/data/model/product_extension.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:bvg_departures/features/departures/presentation/view/widgets/departure_tile/departure_info_widget.dart';
import 'package:bvg_departures/features/departures/presentation/view/widgets/departure_tile/departure_time_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class DepartureTile extends StatelessWidget {
  final Departure departure;
  const DepartureTile({super.key, required this.departure});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: IntrinsicHeight(
          child: Row(
            children: [
              // Line info with product icon
              Expanded(child: DepartureInfoWidget(departure: departure)),

              // Departure details
              DepartureTimeInfoWidget(departure: departure),
            ],
          ),
        ),
      ),
    );
  }
}



