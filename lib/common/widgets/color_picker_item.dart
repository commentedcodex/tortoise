import 'package:flutter/material.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/models/product_color.dart';

class ColorPickerItem extends StatelessWidget {
  final ProductColor color;
  final bool isSelected;
  final VoidCallback onTap;

  const ColorPickerItem({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? AppColors.green500 : Colors.transparent,
            width: 2,
          ),
        ),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(int.parse(color.colorCode.replaceFirst('#', '0xFF'))),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.white, width: 1),
          ),
        ),
      ),
    );
  }
}
