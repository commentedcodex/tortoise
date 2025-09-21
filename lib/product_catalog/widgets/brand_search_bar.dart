import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';

class BrandSearchBar extends StatelessWidget {
  const BrandSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.black, width: 1),
        ),
      ),
      backgroundColor: WidgetStateProperty.all(AppColors.background),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),
      leading: const Padding(
        padding: EdgeInsets.only(left: 8),
        child: Icon(PhosphorIconsRegular.magnifyingGlass, size: 20),
      ),
      hintText: "Search brand...",
      hintStyle: WidgetStateProperty.all(
        Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: AppColors.grey500),
      ),
      textStyle: WidgetStateProperty.all(Theme.of(context).textTheme.bodyLarge),
      elevation: WidgetStateProperty.all(0),
    );
  }
}
