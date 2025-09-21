import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_catalog/viewmodel/product_catalog_viewmodel.dart';
import 'package:tortoise_assignment/product_catalog/widgets/available_devices_list.dart';
import 'package:tortoise_assignment/product_catalog/widgets/brand_search_bar.dart';
import 'package:tortoise_assignment/product_catalog/widgets/popular_brands_list.dart';

class ProductCatalogScreen extends StatelessWidget {
  const ProductCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 114,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(24, 50, 24, 0),
          child: Row(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(
                  PhosphorIconsFill.caretCircleLeft,
                  color: AppColors.grey300,
                  size: 32,
                ),
              ),
              Expanded(child: BrandSearchBar()),
            ],
          ),
        ),
      ),
      body: ChangeNotifierProvider(
        create: (context) => ProductCatalogProvider(),
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            spacing: 30,
            children: [PopularBrandsList(), AvailableDevicesList()],
          ),
        ),
      ),
    );
  }
}
