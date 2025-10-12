import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned(
            top: -150,
            right: -250,
            child: CircularContainer(backgroundColor: AppColors.textWhite.withOpacity(0.1),)),
        Positioned(
            top: 100,
            right: -300,
            child: CircularContainer(backgroundColor: AppColors.textWhite.withOpacity(0.1),)),
      ],
    );
  }
}