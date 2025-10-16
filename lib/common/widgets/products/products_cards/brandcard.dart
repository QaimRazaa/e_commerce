import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

import '../../custom_shapes/containers/rounded_container.dart';
import '../../images/circular_image.dart';
import '../../text/brand_title_text_with_verified_icon.dart';

/// A card widget representing a brand.
class BrandCard extends StatelessWidget {
  /// Default constructor for the TBrandCard.
  ///
  /// Parameters:
  ///   - brand: The brand model to display.
  ///   - showBorder: A flag indicating whether to show a border around the card.
  ///   - onTap: Callback function when the card is tapped.
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
    required this.title,
  });

  final String title;
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,

      child: RoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(Sizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: CircularImage(
                image: AppImages.nikeBrandLogo,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? AppColors.white : AppColors.black,
              ),
            ),
            SizedBox(width: Sizes.spaceBetweenItems / 2),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleWithVerifiedIcon(
                    title: title,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
