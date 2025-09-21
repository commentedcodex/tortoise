import 'package:flutter/material.dart';
import 'package:tortoise_assignment/mock_data.dart';
import 'package:tortoise_assignment/product_details/models/product.dart';
import 'package:tortoise_assignment/product_details/models/product_color.dart';

class ProductDetailsProvider extends ChangeNotifier {
  final int productId;
  late Product _product;
  bool _isLoading = true;

  ProductColor? _selectedColor;
  String? _selectedStorage;

  Product get product => _product;
  bool get isLoading => _isLoading;
  ProductColor? get selectedColor => _selectedColor;
  String? get selectedStorage => _selectedStorage;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setSelectedColor(ProductColor? color) {
    _selectedColor = color;
    notifyListeners();
  }

  void setSelectedStorage(String? storage) {
    _selectedStorage = storage;
    notifyListeners();
  }

  ProductDetailsProvider(this.productId) {
    _fetchProductDetails();
  }

  Future<void> _fetchProductDetails() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    _product = mockProducts.first;
    setLoading(false);
  }
}
