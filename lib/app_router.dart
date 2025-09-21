import 'package:flutter/material.dart';
import 'package:tortoise_assignment/product_catalog/product_catalog_screen.dart';
import 'package:tortoise_assignment/product_details/product_details_screen.dart';

class AppRouter {
  static const String catalog = '/catalog';
  static const String productDetails = '/productDetails';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case catalog:
        return MaterialPageRoute(builder: (_) => const ProductCatalogScreen());
      case productDetails:
        final args = settings.arguments as Map<String, dynamic>?;
        final int? id = args != null ? args['id'] as int? : null;
        return MaterialPageRoute(
          builder:
              (_) => ProductDetailsScreen(
                deviceId: args != null ? args['deviceId'] as int : 0,
                deviceName: args != null ? args['deviceName'] as String : '',
              ),
        );
      default:
        return MaterialPageRoute(builder: (_) => const ProductCatalogScreen());
    }
  }
}
