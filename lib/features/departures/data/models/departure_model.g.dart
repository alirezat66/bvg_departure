// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartureModel _$DepartureModelFromJson(Map<String, dynamic> json) =>
    DepartureModel(
      tripId: json['tripId'] as String,
      stop: StopModel.fromJson(json['stop'] as Map<String, dynamic>),
      when: json['when'] as String?,
      plannedWhen: json['plannedWhen'] as String?,
      delay: (json['delay'] as num?)?.toInt(),
      platform: json['platform'] as String?,
      plannedPlatform: json['plannedPlatform'] as String?,
      prognosisType: json['prognosisType'] as String?,
      direction: json['direction'] as String,
      line: LineModel.fromJson(json['line'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : StopModel.fromJson(json['destination'] as Map<String, dynamic>),
      remarks: (json['remarks'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      origin: json['origin'] == null
          ? null
          : StopModel.fromJson(json['origin'] as Map<String, dynamic>),
      currentTripPosition: json['currentTripPosition'] as Map<String, dynamic>?,
      cancelled: json['cancelled'] as bool?,
    );

Map<String, dynamic> _$DepartureModelToJson(DepartureModel instance) =>
    <String, dynamic>{
      'tripId': instance.tripId,
      'stop': instance.stop,
      'when': instance.when,
      'plannedWhen': instance.plannedWhen,
      'delay': instance.delay,
      'platform': instance.platform,
      'plannedPlatform': instance.plannedPlatform,
      'prognosisType': instance.prognosisType,
      'direction': instance.direction,
      'line': instance.line,
      'destination': instance.destination,
      'remarks': instance.remarks,
      'origin': instance.origin,
      'currentTripPosition': instance.currentTripPosition,
      'cancelled': instance.cancelled,
    };
