import 'package:bvg_departures/features/departures/data/models/departure_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'departure_response_model.g.dart';

@JsonSerializable()
class DepartureResponseModel {
  final List<DepartureModel> departures;
  final int realtimeDataUpdatedAt;

  DepartureResponseModel({
    required this.departures,
    required this.realtimeDataUpdatedAt,
  });

  factory DepartureResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DepartureResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$DepartureResponseModelToJson(this);
}
