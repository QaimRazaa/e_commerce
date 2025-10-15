import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utils.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
      child: Container(
        width: DeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(Sizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
              ? AppColors.dark
              : AppColors.white
              : Colors.transparent,
          borderRadius: showBorder
              ? BorderRadius.circular(Sizes.cardRadiusLg)
              : null,
          border: Border.all(color: AppColors.grey),
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.darkerGrey),
            SizedBox(width: Sizes.spaceBetweenItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
