import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.backgroundColor = AppColors.white,
    this.radius = Sizes.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = AppColors.borderPrimary,
    this.child,
  });

  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final Color backgroundColor, borderColor;
  final double radius;
  final bool showBorder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
