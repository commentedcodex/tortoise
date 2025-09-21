import 'package:flutter/material.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/common/widgets/dashed_divider.dart';

class PriceBreakdownWidget extends StatelessWidget {
  const PriceBreakdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.grey300, width: 1),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tax slab', style: Theme.of(context).textTheme.bodyMedium),
              Row(
                children: [
                  Text('30%', style: Theme.of(context).textTheme.bodyLarge),
                  Icon(Icons.arrow_drop_down, size: 24),
                ],
              ),
            ],
          ),
          DashedDivider(height: 20),
          Row(
            spacing: 24,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Effective price of the device',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.green600,
                      ),
                    ),
                    Text(
                      'Price calculation based on selected tax slab',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.grey500,
                      ),
                    ),
                  ],
                ),
              ),
              Text('92,483', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          DashedDivider(height: 20),
          Row(
            spacing: 24,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Impact in monthly in-hand',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'You monthly in-hand salary will be reduced by this amount',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.grey500,
                      ),
                    ),
                  ],
                ),
              ),
              Text('92,483', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          Divider(height: 20, color: AppColors.grey300),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Know more',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(color: AppColors.green600),
              ),
              Icon(Icons.arrow_drop_down, size: 24, color: AppColors.green600),
            ],
          ),
        ],
      ),
    );
  }
}
