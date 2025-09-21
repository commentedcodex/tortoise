import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/app_router.dart';
import 'package:tortoise_assignment/product_catalog/viewmodel/product_catalog_viewmodel.dart';
import 'package:tortoise_assignment/product_catalog/widgets/device_selection_tab.dart';

class AvailableDevicesList extends StatelessWidget {
  const AvailableDevicesList({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductCatalogProvider>(context);
    final availableDevices = provider.availableDevices;

    if (availableDevices.isEmpty) {
      return SizedBox.shrink();
    }

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Text(
            'Available devices',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                childAspectRatio: 1.57,
              ),
              itemCount: availableDevices.length,
              itemBuilder: (context, index) {
                final device = availableDevices[index];

                return DeviceSelectionTab(
                  image: device.image,
                  name: device.name,
                  onTap:
                      () => Navigator.pushNamed(
                        context,
                        AppRouter.productDetails,
                        // Hardcoded values for testing purpose
                        arguments: {
                          'deviceId': 1,
                          'deviceName': 'iPhone 17 Pro',
                        },
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
