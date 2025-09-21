import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/common/widgets/color_picker_item.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';

class ColorPickerWidget extends StatelessWidget {
  const ColorPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "FINISH",
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.grey500),
        ),
        SizedBox(height: 4),
        Text("Pick a color", style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: 16),
        Consumer<ProductDetailsViewModel>(
          builder: (context, viewModel, child) {
            return Row(
              spacing: 8,
              children:
                  viewModel.product.colors.map((color) {
                    final isSelected = viewModel.selectedColor?.id == color.id;

                    return ColorPickerItem(
                      color: color,
                      isSelected: isSelected,
                      onTap: () => viewModel.setSelectedColor(color),
                    );
                  }).toList(),
            );
          },
        ),
      ],
    );
  }
}
