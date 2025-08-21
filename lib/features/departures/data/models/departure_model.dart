import 'package:bvg_departures/core/data/model/product.dart';
import 'package:bvg_departures/core/data/model/stop_model.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:json_annotation/json_annotation.dart';
import 'line_model.dart';

part 'departure_model.g.dart';

@JsonSerializable()
class DepartureModel {
  final String tripId;
  final StopModel stop;
  final String? when;
  final String? plannedWhen;
  final int? delay;
  final String? platform;
  final String? plannedPlatform;
  final String? prognosisType;
  final String direction;
  final LineModel line;
  final StopModel? destination;
  final List<Map<String, dynamic>>? remarks;
  final StopModel? origin;
  final Map<String, dynamic>? currentTripPosition;
  final bool? cancelled;

  DepartureModel({
    required this.tripId,
    required this.stop,
    this.when,
    this.plannedWhen,
    this.delay,
    this.platform,
    this.plannedPlatform,
    this.prognosisType,
    required this.direction,
    required this.line,
    this.destination,
    this.remarks,
    this.origin,
    this.currentTripPosition,
    this.cancelled,
  });

  factory DepartureModel.fromJson(Map<String, dynamic> json) =>
      _$DepartureModelFromJson(json);
  Map<String, dynamic> toJson() => _$DepartureModelToJson(this);

  Departure? toEntity() {
    try {
      // Use when if available, otherwise fallback to plannedWhen
      final timeString = when ?? plannedWhen;

      // If both are null, return null (this departure will be filtered out)
      if (timeString == null) return null;

      // Parse the time string
      final parsedTime = DateTime.parse(timeString);

      return Departure(
        tripId: tripId,
        stopName: stop.name,
        destinationName: direction,
        lineName: line.name,
        lineProduct: Product.fromString(line.product),
        delay: delay,
        when: parsedTime,
        platform: platform,
      );
    } catch (e) {
      // If parsing fails, return null (this departure will be filtered out)
      return null;
    }
  }
}
