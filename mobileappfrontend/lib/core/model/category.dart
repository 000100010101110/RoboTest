import 'package:mobileappfrontend/core/model/products.dart';

class Category {
  final String name;
  final String numberEquivalent;
  final List<Product> products;

  Category({
    required this.name,
    required this.numberEquivalent,
    required this.products,
  });

  Category.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        numberEquivalent = json['numberEquivalent'] as String,
        products = (json['products'] as List<dynamic>?)
                ?.map((product) => Product.fromJson(product))
                .toList() ??
            [];

  Map<String, dynamic> toJson() => {
        'name': name,
        'numberEquivalent': numberEquivalent,
        'products': products.map((product) => product.toJson()).toList(),
      };
}
