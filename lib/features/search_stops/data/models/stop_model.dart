import 'package:bvg_departures/core/data/model/product.dart';
import 'package:bvg_departures/features/search_stops/data/models/location_model.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stop_model.g.dart';

@JsonSerializable()
class StopModel {
  final String id;
  final String name;
  final LocationModel? location;
  final Map<String, dynamic>? products;

  StopModel({
    required this.id,
    required this.name,
    this.location,
    this.products,
  });

  factory StopModel.fromJson(Map<String, dynamic> json) =>
      _$StopModelFromJson(json);
  Map<String, dynamic> toJson() => _$StopModelToJson(this);

  Stop toEntity() => Stop(id: id, name: name, products: _mapProducts(products));

  static Set<Product> _mapProducts(Map<String, dynamic>? p) {
    if (p == null) return const {};
    final out = <Product>{};
    for (final e in p.entries) {
      if (e.value == true) {
        out.add(Product.fromString(e.key));
      }
    }
    return out;
  }
}
