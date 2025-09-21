import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_catalog/viewmodel/product_catalog_viewmodel.dart';
import 'package:tortoise_assignment/product_catalog/widgets/available_devices_list.dart';
import 'package:tortoise_assignment/product_catalog/widgets/popular_brands_list.dart';

class ProductCatalogScreen extends StatelessWidget {
  const ProductCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Product Catalog',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: ChangeNotifierProvider(
            create: (context) => ProductCatalogProvider(),
            child: Column(
              spacing: 30,
              children: [PopularBrandsList(), AvailableDevicesList()],
            ),
          ),
        ),
      ),
    );
  }
}
