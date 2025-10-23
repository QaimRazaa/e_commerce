import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/rounded_images.dart';
import 'package:e_commerce/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/text/product_price_text.dart';
import 'package:e_commerce/common/widgets/text/product_title_text.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_product_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.lightContainer,
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 125,
            padding: EdgeInsets.all(Sizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundedImages(
                    imagePath: AppImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 5,
                  child: RoundedContainer(
                    radius: Sizes.sm,
                    backgroundColor: AppColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.sm,
                      vertical: Sizes.xs,
                    ),
                    child: Text(
                      ('25%'),
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: AppColors.black),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Center(
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      width: Sizes.xl,
                      height: Sizes.xl,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 170,
            child: Padding(
              padding: EdgeInsets.only(top: Sizes.sm, left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: 'Green Nike Sports Shoes',
                        smallSize: true,
                      ),
                      SizedBox(height: Sizes.spaceBetweenItems / 2),
                      BrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: ProductPriceText(price: '250')),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Sizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              Sizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: Sizes.iconLg * 1.2,
                          height: Sizes.iconLg * 1.2,
                          child: Icon(Iconsax.add, color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
