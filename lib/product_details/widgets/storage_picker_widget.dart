import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';
import 'package:tortoise_assignment/common/widgets/storage_picker_item.dart';

class StoragePickerWidget extends StatelessWidget {
  const StoragePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "STORAGE",
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.grey500),
        ),
        SizedBox(height: 4),
        Text(
          "How much space do you need?",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: 16),
        Consumer<ProductDetailsProvider>(
          builder: (context, viewModel, child) {
            return Wrap(
              runSpacing: 8,
              spacing: 8,
              children:
                  viewModel.product.storageOptions.map<Widget>((storageOption) {
                    final isSelected =
                        viewModel.selectedStorage == storageOption;

                    return StoragePickerItem(
                      isSelected: isSelected,
                      storageDetails: storageOption,
                      onTap: () => viewModel.setSelectedStorage(storageOption),
                    );
                  }).toList(),
            );
          },
        ),
      ],
    );
  }
}
