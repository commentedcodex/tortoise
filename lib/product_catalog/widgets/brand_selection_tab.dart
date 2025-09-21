import 'package:flutter/material.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';

class BrandSelectionTab extends StatelessWidget {
  final bool selected;
  final String image;
  final String name;
  final VoidCallback onTap;

  const BrandSelectionTab({
    super.key,
    required this.selected,
    required this.image,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 76,
        height: 76,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          border: Border.all(
            color: selected ? AppColors.black : AppColors.grey300,
            width: selected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 24),
            Text(name, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
