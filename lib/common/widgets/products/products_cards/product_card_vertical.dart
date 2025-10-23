import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/rounded_images.dart';
import 'package:e_commerce/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/circular_product_icon.dart';
import '../../text/product_price_text.dart';
import '../../text/product_title_text.dart';
import 'package:get/get.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
    required this.image,
    required this.title,
    required this.brand,
    required this.price,
    this.discount,
  });

  final String image;
  final String title;
  final String brand;
  final String price;
  final String? discount;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          color: dark ? AppColors.darkerGrey : AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedContainer(
              height: 180,
              padding: EdgeInsets.all(Sizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  RoundedImages(
                    imagePath: image,
                    applyImageRadius: true,
                  ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: RoundedContainer(
                        radius: Sizes.sm,
                        backgroundColor: AppColors.secondary.withOpacity(0.8),
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.sm,
                          vertical: Sizes.xs,
                        ),
                        child: Text(
                          ('25%'),
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: AppColors.black),
                        ),
                      ),
                    ),
                  Positioned(
                    top: 5,
                    right: 5,
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
            SizedBox(height: Sizes.spaceBetweenItems / 2),
            Padding(
              padding: EdgeInsets.only(left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: title, smallSize: true),
                  SizedBox(height: Sizes.spaceBetweenItems / 2.5),
                  BrandTitleWithVerifiedIcon(title: brand),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Sizes.sm),
                  child: ProductPriceText(price: price),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Sizes.cardRadiusMd),
                      bottomRight: Radius.circular(Sizes.productImageRadius),
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
    );
  }
}
