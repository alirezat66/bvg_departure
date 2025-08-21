import 'package:bvg_departures/features/departures/domain/entities/departure.dart';

class DepartureResponse {
  final List<Departure> departures;
  final DateTime realtimeDataUpdatedAt;

  const DepartureResponse({
    required this.departures,
    required this.realtimeDataUpdatedAt,
  });
}
