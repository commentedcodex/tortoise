import 'package:flutter/material.dart';
import 'package:tortoise_assignment/product_details/widgets/device_details_widget.dart';
import 'package:tortoise_assignment/product_details/widgets/protected_label.dart';
import 'package:tortoise_assignment/product_details/widgets/shipping_label.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShippingLabel(),
          const ProtectedLabel(),
          DeviceDetailsWidget(),
        ],
      ),
    );
  }
}
