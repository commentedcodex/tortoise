import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/common/extensions.dart';
import 'package:tortoise_assignment/product_details/models/product.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';

class EffectivePriceWidget extends StatelessWidget {
  final VoidCallback onTap;
  const EffectivePriceWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.green200,
              AppColors.green300,
              AppColors.green200,
            ],
          ),
        ),
        child: Selector<ProductDetailsProvider, Product>(
          selector: (context, viewModel) => viewModel.product,
          builder: (context, product, child) {
            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.grey50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: Colors.transparent),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'EFFECTIVE PRICE',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const Icon(
                        PhosphorIconsFill.caretCircleRight,
                        color: AppColors.green600,
                        size: 16,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    product.effectivePrice.formatToIntl(),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppColors.green600,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'See impact in net-salary',
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(color: AppColors.green600),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
