import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/common/styles/text_theme.dart';
import 'package:tortoise_assignment/common/widgets/expandable_section.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';

class DeviceSpecificationsWidget extends StatelessWidget {
  const DeviceSpecificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SPECIFICATIONS",
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.grey500),
        ),
        SizedBox(height: 16),
        Consumer<ProductDetailsViewModel>(
          builder: (context, viewModel, child) {
            final specs = viewModel.product.specifications;

            return ExpandableSection(
              content: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  spacing: 20,
                  children: [
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.arrowsOutSimple,
                      title: 'Screen size',
                      value: specs.screenSize,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.camera,
                      title: 'Camera',
                      value: specs.camera,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.database,
                      title: 'Storage and RAM',
                      value: '${specs.ram} | ${specs.storage}',
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.batteryEmpty,
                      title: 'Battery',
                      value: specs.battery,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.cellSignalFull,
                      title: 'Connectivity',
                      value: specs.connectivity,
                    ),
                  ],
                ),
              ),
              expandedContent: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  spacing: 20,
                  children: [
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.cpu,
                      title: 'Processor',
                      value: specs.processor,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.deviceMobile,
                      title: 'Operating System',
                      value: specs.operatingSystem,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.monitor,
                      title: 'Display Type',
                      value: specs.displayType,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.arrowsClockwise,
                      title: 'Refresh Rate',
                      value: specs.refreshRate,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.userCircle,
                      title: 'Front Camera',
                      value: specs.frontCamera,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.videoCamera,
                      title: 'Video Recording',
                      value: specs.videoRecording,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.lightning,
                      title: 'Charging Speed',
                      value: specs.chargingSpeed,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.batteryCharging,
                      title: 'Wireless Charging',
                      value: specs.wirelessCharging,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.drop,
                      title: 'Water Resistance',
                      value: specs.waterResistance,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.fingerprint,
                      title: 'Biometrics',
                      value: specs.biometrics,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.palette,
                      title: 'Available Colors',
                      value: specs.colors,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.scales,
                      title: 'Weight',
                      value: specs.weight,
                    ),
                    _buildSpecificationRow(
                      icon: PhosphorIconsRegular.ruler,
                      title: 'Dimensions',
                      value: specs.dimensions,
                    ),
                  ],
                ),
              ),
              expansionCtaText: 'More details',
            );
          },
        ),
      ],
    );
  }

  Widget _buildSpecificationRow({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Row(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20),
        Expanded(
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.textTheme.titleMedium?.copyWith(
                  color: AppColors.grey700,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                value,
                style: AppTypography.textTheme.labelMedium?.copyWith(
                  color: AppColors.grey700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
