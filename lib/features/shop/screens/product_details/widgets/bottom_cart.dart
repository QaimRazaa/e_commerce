import 'package:e_commerce/common/widgets/icons/circular_product_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomCart extends StatelessWidget {
  const BottomCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.defaultSpace,
        vertical: Sizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Sizes.cardRadiusLg),
          topRight: Radius.circular(Sizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: AppColors.darkGrey,
                width: 40,
                height: 40,
                iconColor: AppColors.white,
              ),
              SizedBox(width: Sizes.spaceBetweenItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: Sizes.spaceBetweenItems),
              CircularIcon(
                icon: Iconsax.add,
                backgroundColor: AppColors.black,
                width: 40,
                height: 40,
                iconColor: AppColors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(Sizes.md),
                backgroundColor: AppColors.black,
                side: BorderSide(color: AppColors.black)
              ),
              child: Text('Add to Cart')),
        ],
      ),
    );
  }
}
