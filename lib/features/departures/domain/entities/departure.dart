import 'package:bvg_departures/core/data/model/product.dart';

class Departure {
  final String tripId;
  final String stopName;
  final String destinationName;
  final String lineName;
  final Product lineProduct;
  final int? delay;
  final DateTime? when;
  final String? platform;

  const Departure({
    required this.tripId,
    required this.stopName,
    required this.destinationName,
    required this.lineName,
    required this.lineProduct,
    this.delay,
    this.when,
    this.platform,
  });
}
