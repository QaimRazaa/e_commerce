import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_images.dart';
import '../../text/brand_title_text_with_verified_icon.dart';
import '../../text/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        RoundedImages(
          imagePath: AppImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(Sizes.sm),
          backGroundColor: dark
              ? AppColors.darkerGrey
              : AppColors.light,
        ),
        SizedBox(width: Sizes.spaceBetweenItems),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BrandTitleWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: ProductTitleText(
                  title: 'Green Sports Shoes',
                  maxLines: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08 ',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
