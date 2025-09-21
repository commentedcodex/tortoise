import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/constants/image_paths.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';

class ProtectedLabel extends StatelessWidget {
  const ProtectedLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<ProductDetailsViewModel, String>(
      selector: (context, viewModel) => viewModel.product.shippingDetails,
      builder: (context, shippingDetails, child) {
        return Container(
          height: 54,
          width: double.infinity,
          color: AppColors.green900,
          child: Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImagePaths.shield, height: 24, width: 24),
              Text(
                "Protected with Tortoise Corporate Care",
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppColors.green200),
              ),
            ],
          ),
        );
      },
    );
  }
}
