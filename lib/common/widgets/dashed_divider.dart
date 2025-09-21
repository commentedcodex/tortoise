import 'package:flutter/material.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';

class DashedDivider extends StatelessWidget {
  final double height;
  final Color? color;
  final double dashWidth;
  final double dashSpace;
  final Axis axis;
  final double thickness;

  const DashedDivider({
    super.key,
    this.height = 16.0,
    this.color = AppColors.grey300,
    this.dashWidth = 6,
    this.dashSpace = 4,
    this.axis = Axis.horizontal,
    this.thickness = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: axis == Axis.horizontal ? height : null,
      width: axis == Axis.vertical ? height : null,
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final length =
                axis == Axis.horizontal
                    ? constraints.maxWidth
                    : constraints.maxHeight;

            final dashCount = (length / (dashWidth + dashSpace)).floor();

            return Flex(
              direction: axis,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(dashCount, (_) {
                return SizedBox(
                  width: axis == Axis.horizontal ? dashWidth : thickness,
                  height: axis == Axis.horizontal ? thickness : dashWidth,
                  child: DecoratedBox(decoration: BoxDecoration(color: color)),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
