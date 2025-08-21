import 'package:bvg_departures/core/data/model/product.dart';

class Stop {
  final String id;
  final String name;
  final Set<Product> products;
  const Stop({required this.id, required this.name, this.products = const {}});
}
