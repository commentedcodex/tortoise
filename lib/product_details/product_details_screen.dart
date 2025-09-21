import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';
import 'package:tortoise_assignment/product_details/widgets/device_price_footer.dart';
import 'package:tortoise_assignment/product_details/widgets/product_details_body.dart';
import 'package:tortoise_assignment/product_details/widgets/product_details_screen_shimmer.dart';

class ProductDetailsScreen extends StatelessWidget {
  final int deviceId;
  final String deviceName;

  const ProductDetailsScreen({
    super.key,
    required this.deviceId,
    required this.deviceName,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductDetailsViewModel(deviceId),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          toolbarHeight: 114,
          backgroundColor: AppColors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      PhosphorIconsFill.caretCircleLeft,
                      color: AppColors.grey300,
                      size: 32,
                    ),
                  ),
                  Text(
                    deviceName,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 24, width: 24),
                ],
              ),
            ),
          ),
        ),
        body: Selector<ProductDetailsViewModel, bool>(
          selector: (context, viewModel) => viewModel.isLoading,
          builder: (context, isLoading, child) {
            if (isLoading) {
              return ProductDetailsScreenShimmer();
            }
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [ProductDetailsBody(), DevicePriceFooter()],
            );
          },
        ),
      ),
    );
  }
}
