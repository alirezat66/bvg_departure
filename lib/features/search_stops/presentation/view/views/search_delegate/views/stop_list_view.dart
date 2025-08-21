import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/presentation/view/views/search_delegate/widgets/stop_tile.dart';
import 'package:flutter/material.dart';

class StopListView extends StatelessWidget {
  final List<Stop> stops;
  final Function(Stop) onTap;
  const StopListView({super.key, required this.stops, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: stops.length,
      itemBuilder: (context, index) =>
          StopTiles(stop: stops[index], onTap: onTap),
    );
  }
}
