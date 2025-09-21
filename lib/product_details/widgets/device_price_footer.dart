import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';
import 'package:tortoise_assignment/product_details/widgets/device_price_widget.dart';
import 'package:tortoise_assignment/product_details/widgets/effective_price_bottomsheet.dart';
import 'package:tortoise_assignment/product_details/widgets/effective_price_widget.dart';

class DevicePriceFooter extends StatelessWidget {
  const DevicePriceFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x59EEEEEE),
            offset: const Offset(0, -6.54),
            blurRadius: 19.61,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: const Color(0x0F42474C),
            offset: const Offset(0, -3.27),
            blurRadius: 6.54,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: const Color(0x5242474C),
            offset: const Offset(0, 0),
            blurRadius: 0.82,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            spacing: 6,
            children: [
              Expanded(child: DevicePriceWidget()),
              Expanded(
                child: EffectivePriceWidget(
                  onTap: () {
                    final viewModel = Provider.of<ProductDetailsProvider>(
                      context,
                      listen: false,
                    );
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      context: context,
                      builder:
                          (BuildContext context) => EffectiveWidgetBottomSheet(
                            productDetailsProvider: viewModel,
                          ),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 56),
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                'Add to Cart',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
