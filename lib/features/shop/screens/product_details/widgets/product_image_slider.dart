import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_product_icon.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return CustomCurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(Sizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(AppImages.productImage1),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: Sizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      SizedBox(width: Sizes.spaceBetweenItems),
                  itemCount: 4,
                  itemBuilder: (_, index) => (RoundedImages(
                    width: 80,
                    backGroundColor: dark
                        ? AppColors.dark
                        : AppColors.white,
                    border: Border.all(color: AppColors.black),
                    padding: EdgeInsets.all(Sizes.sm),
                    imagePath: AppImages.productImage7,
                  )),
                ),
              ),
            ),
            CustomAppBar(backArrow: true, action: [
              CircularIcon(icon: Iconsax.heart5, iconColor: Colors.red,)
            ],)
          ],
        ),
      ),
    );
  }
}
