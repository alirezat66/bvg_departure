// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departure_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartureResponseModel _$DepartureResponseModelFromJson(
  Map<String, dynamic> json,
) => DepartureResponseModel(
  departures: (json['departures'] as List<dynamic>)
      .map((e) => DepartureModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  realtimeDataUpdatedAt: (json['realtimeDataUpdatedAt'] as num).toInt(),
);

Map<String, dynamic> _$DepartureResponseModelToJson(
  DepartureResponseModel instance,
) => <String, dynamic>{
  'departures': instance.departures,
  'realtimeDataUpdatedAt': instance.realtimeDataUpdatedAt,
};
