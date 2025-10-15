import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/rounded_images.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Column(
        children: [
          RoundedContainer(
            height: 180,
            padding: EdgeInsets.all(Sizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(children: [
              RoundedImages(imagePath: AppImages.promoBanner1)
            ]),
          ),
        ],
      ),
    );
  }
}
