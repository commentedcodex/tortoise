import 'package:flutter/material.dart';
import 'package:tortoise_assignment/product_details/widgets/color_picker_widget.dart';
import 'package:tortoise_assignment/product_details/widgets/storage_picker_widget.dart';

class DeviceDetailsWidget extends StatelessWidget {
  const DeviceDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 24, 24, 250),
      child: Column(
        spacing: 36,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ColorPickerWidget(), StoragePickerWidget(), Placeholder()],
      ),
    );
  }
}
