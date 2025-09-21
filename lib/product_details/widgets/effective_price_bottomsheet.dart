import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/models/product.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';
import 'package:tortoise_assignment/product_details/widgets/price_breakdown_widget.dart';

class EffectiveWidgetBottomSheet extends StatelessWidget {
  final ProductDetailsProvider productDetailsProvider;
  const EffectiveWidgetBottomSheet({
    super.key,
    required this.productDetailsProvider,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: productDetailsProvider,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 36),
        child: Selector<ProductDetailsProvider, Product>(
          selector: (_, viewModel) => viewModel.product,
          builder: (context, value, child) {
            return Column(
              spacing: 30,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  spacing: 12,
                  children: [
                    Text(
                      'EFFECTIVE PRICE',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.grey500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'The effective price is the device’s cost after savings, based on your payroll structure',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                PriceBreakdownWidget(),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 56),
                    backgroundColor: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Text(
                    'Okay! Understood',
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: AppColors.white),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
