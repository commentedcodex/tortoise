import 'package:flutter/material.dart';
import 'package:tortoise_assignment/product_catalog/model/brand.dart';
import 'package:tortoise_assignment/product_catalog/model/device.dart';
import 'package:tortoise_assignment/mock_data.dart';

class ProductCatalogProvider extends ChangeNotifier {
  final List<Brand> _brands = mockBrands;

  List<Brand> get brands => _brands;

  final List<Device> _devices = mockDevices;

  List<Device> get devices => _devices;

  int? _selectedBrandId;
  int? get selectedBrandId => _selectedBrandId;

  void selectBrand(int brandId) {
    if (_selectedBrandId != brandId) {
      _selectedBrandId = brandId;
      notifyListeners();
    }
  }

  List<Device> get availableDevices {
    final selectedBrandIndex = _brands.indexWhere(
      (brand) => brand.id == _selectedBrandId,
    );
    if (selectedBrandIndex == -1) {
      return [];
    }
    final brandId = _brands[selectedBrandIndex].id;
    return _devices.where((device) => device.brandId == brandId).toList();
  }

  void selectDevice(int deviceId) {
    if (_selectedBrandId != deviceId) {
      _selectedBrandId = deviceId;
      notifyListeners();
    }
  }
}
