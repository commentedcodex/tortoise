import 'package:flutter/material.dart';

class DeviceSelectionTab extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback onTap;

  const DeviceSelectionTab({
    super.key,
    required this.image,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 6.54),
              blurRadius: 19.61,
              spreadRadius: 0,
              color: Color(0x59EEEEEE),
            ),
            BoxShadow(
              offset: Offset(0, 3.27),
              blurRadius: 6.54,
              spreadRadius: 0,
              color: Color(0x0F42474C),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 48),
            Text(name, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
