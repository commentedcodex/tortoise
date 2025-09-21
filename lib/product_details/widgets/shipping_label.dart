import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';

class ShippingLabel extends StatelessWidget {
  const ShippingLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<ProductDetailsProvider, String>(
      selector: (context, viewModel) => viewModel.product.shippingDetails,
      builder: (context, shippingDetails, child) {
        return Container(
          height: 42,
          width: double.infinity,
          color: AppColors.cream50,
          child: Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                PhosphorIconsFill.truck,
                size: 20,
                color: AppColors.brown600,
              ),
              Text(
                shippingDetails,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppColors.brown600),
              ),
            ],
          ),
        );
      },
    );
  }
}
