import 'package:tortoise_assignment/product_details/models/product_color.dart';

class Product {
  final int id;
  final String name;
  final String brand;
  final String imageUrl;
  final double price;
  final double effectivePrice;
  final double monthlyDeduction;
  final int taxSlab;
  final double impactMonthlyInHand;
  final List<ProductColor> colors;
  final String shippingDetails;
  final List<String> storageOptions;

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.imageUrl,
    required this.price,
    required this.effectivePrice,
    required this.monthlyDeduction,
    required this.taxSlab,
    required this.impactMonthlyInHand,
    required this.colors,
    required this.shippingDetails,
    required this.storageOptions,
  });
}
