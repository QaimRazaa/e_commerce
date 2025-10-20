import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/text/product_price_text.dart';
import 'package:e_commerce/common/widgets/text/product_title_text.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key, this.discount});

  final String? discount;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.sm,
                vertical: Sizes.xs,
              ),
              child: Text(

                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: AppColors.black),
              ),
            ),
            SizedBox(width: Sizes.spaceBetweenItems,),
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: Sizes.spaceBetweenItems,),
          ProductPriceText(price: '170',isLarge: true,)
          ],
        ),
        SizedBox(height: Sizes.spaceBetweenItems / 1.5,),
        ProductTitleText(title: 'Green Nike Sports Shoes'),
        SizedBox(height: Sizes.spaceBetweenItems / 1.5,),
        Row(
          children: [
            ProductTitleText(title: 'Stock'),
            SizedBox(width: Sizes.spaceBetweenItems,),

            Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),

          ],
        ),
        SizedBox(height: Sizes.spaceBetweenItems / 1.5,),
        Row(
          children: [
            CircularImage(image: AppImages.nikeBrandLogo,
            width: 32,
            height: 32,
            overlayColor: dark ? AppColors.white : AppColors.black,),
            SizedBox(width: Sizes.spaceBetweenItems /2,),
            BrandTitleWithVerifiedIcon(title: 'Nike' ,brandTextSize: TextSizes.medium,),
          ],
        )




      ],
    );
  }
}
