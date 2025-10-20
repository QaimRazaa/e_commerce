import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_product_icon.dart';

class ProductAddAndRemoveButton extends StatelessWidget {
  const ProductAddAndRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: Sizes.md,
          iconColor: dark ? AppColors.white : AppColors.black,
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        ),
        SizedBox(width: Sizes.spaceBetweenItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: Sizes.spaceBetweenItems),
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: Sizes.md,
          iconColor: AppColors.white,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
