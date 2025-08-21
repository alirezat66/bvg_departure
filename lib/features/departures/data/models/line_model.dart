import 'package:json_annotation/json_annotation.dart';

part 'line_model.g.dart';

@JsonSerializable()
class LineModel {
  final String name;
  final String product;

  LineModel({required this.name, required this.product});

  factory LineModel.fromJson(Map<String, dynamic> json) =>
      _$LineModelFromJson(json);
  Map<String, dynamic> toJson() => _$LineModelToJson(this);
}
