// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopModel _$StopModelFromJson(Map<String, dynamic> json) => StopModel(
  id: json['id'] as String,
  name: json['name'] as String,
  location: json['location'] == null
      ? null
      : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
  products: json['products'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$StopModelToJson(StopModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'location': instance.location,
  'products': instance.products,
};
