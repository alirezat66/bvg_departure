import 'package:bvg_departures/core/data/model/product.dart';

extension ProductAssets on Product {
  String get assetPath => 'assets/transporters/$name.svg';
}
