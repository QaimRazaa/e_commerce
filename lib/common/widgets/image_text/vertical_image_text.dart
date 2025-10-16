import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class VerticalImageAndText extends StatelessWidget {
  const VerticalImageAndText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backGroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: Sizes.spaceBetweenItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: backGroundColor ??
                    (dark ? AppColors.black : AppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? AppColors.white : AppColors.black,
                ),
              ),
            ),
            SizedBox(height: Sizes.spaceBetweenItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: dark ? AppColors.white : AppColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
