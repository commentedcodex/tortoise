import 'package:flutter/material.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';

class StoragePickerItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String storageDetails;

  const StoragePickerItem({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.storageDetails,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border(
            top: BorderSide(
              color: isSelected ? AppColors.green500 : AppColors.grey300,
              width: 1,
            ),
            left: BorderSide(
              color: isSelected ? AppColors.green500 : AppColors.grey300,
              width: 1,
            ),
            right: BorderSide(
              color: isSelected ? AppColors.green500 : AppColors.grey300,
              width: 1,
            ),
            bottom: BorderSide(
              color: isSelected ? AppColors.green500 : AppColors.grey300,
              width: 3,
            ),
          ),
        ),
        child: Row(
          spacing: 12,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.green500 : AppColors.grey300,
                  width: 2,
                ),
                color: isSelected ? AppColors.green500 : Colors.transparent,
              ),
              child:
                  isSelected
                      ? Center(
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white,
                          ),
                        ),
                      )
                      : null,
            ),
            Text(
              storageDetails,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
