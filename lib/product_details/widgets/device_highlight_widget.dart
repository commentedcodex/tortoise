import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';
import 'package:tortoise_assignment/common/widgets/image_expanded_section.dart';

class DeviceHighlightWidget extends StatelessWidget {
  const DeviceHighlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<ProductDetailsProvider, String>(
      selector: (context, viewModel) => viewModel.product.imageUrl,
      builder: (context, imageUrl, child) {
        return ImageExpandedSection(
          collapsedHeight: 342,
          expandedHeight: 800,
          expansionCtaText: 'View more',
          imageUrl: imageUrl,
        );
      },
    );
  }
}
