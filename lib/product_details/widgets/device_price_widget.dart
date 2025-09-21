import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/common/extensions.dart';
import 'package:tortoise_assignment/product_details/models/product.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';

class DevicePriceWidget extends StatelessWidget {
  const DevicePriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<ProductDetailsProvider, Product>(
      selector: (context, viewModel) => viewModel.product,
      builder: (context, product, child) {
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.grey50,
            border: Border(left: BorderSide(color: AppColors.grey50, width: 1)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DEVICE PRICE',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: 12),
              Text(
                product.price.formatToIntl(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 6),
              Text(
                'Monthly deduction ${product.monthlyDeduction.formatToIntl()}',
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(color: AppColors.grey700),
              ),
            ],
          ),
        );
      },
    );
  }
}
