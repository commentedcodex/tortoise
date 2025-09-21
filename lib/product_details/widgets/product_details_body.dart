import 'package:flutter/material.dart';
import 'package:tortoise_assignment/product_details/widgets/color_picker_widget.dart';
import 'package:tortoise_assignment/product_details/widgets/device_highlight_widget.dart';
import 'package:tortoise_assignment/product_details/widgets/device_preview_carousel.dart';
import 'package:tortoise_assignment/product_details/widgets/device_specifications_widget.dart';
import 'package:tortoise_assignment/product_details/widgets/protected_label.dart';
import 'package:tortoise_assignment/product_details/widgets/shipping_label.dart';
import 'package:tortoise_assignment/product_details/widgets/storage_picker_widget.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShippingLabel(),
          DevicePreviewCarousel(),
          const ProtectedLabel(),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 24, 300),
            child: Column(
              spacing: 36,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColorPickerWidget(),
                StoragePickerWidget(),
                DeviceSpecificationsWidget(),
                DeviceHighlightWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
