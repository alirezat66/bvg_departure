enum Product {
  suburban,
  subway,
  tram,
  bus,
  ferry,
  express,
  regional;

  factory Product.fromString(String key) {
    return Product.values.byName(key);
  }
}

