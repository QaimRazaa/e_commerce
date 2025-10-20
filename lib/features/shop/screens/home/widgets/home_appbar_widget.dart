import 'package:e_commerce/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        children: [
          Text(
            AppTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: AppColors.grey),
          ),
          Text(
            AppTexts.homeAppBarSubtitle,
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: AppColors.white),
          ),
        ],
      ),
      action: [
        CartCounterIcon(
          onPressed: () => Get.to(() => CartScreen()),
        ),
      ],
    );
  }
}