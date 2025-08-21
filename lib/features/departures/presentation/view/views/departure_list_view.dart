import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:bvg_departures/features/departures/presentation/view/widgets/departure_tile.dart';
import 'package:flutter/material.dart';

class DepartureListView extends StatelessWidget {
  final List<Departure> departures;
  final Future<void> Function() onRefresh;
  const DepartureListView({
    super.key,
    required this.departures,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: departures.length,
        itemBuilder: (context, index) {
          final departure = departures[index];
          return DepartureTile(departure: departure);
        },
      ),
    );
  }
}
