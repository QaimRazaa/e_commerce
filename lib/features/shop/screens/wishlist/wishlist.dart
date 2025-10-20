import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/icons/circular_product_icon.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/cart_counter_icon.dart';
import '../home/home.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'WishList',
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
        action: [
          CircularIcon(
            icon: Iconsax.add, onPressed: () => Get.to(HomeScreen()),)
        ],
      ), body: SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            GirdLayout(itemCount: 6,
                itemBuilder: (_, index) =>
                    ProductCardVertical(
                        image: AppImages.productImage1, title: 'Green Nike Air Shoes', brand: 'Nike', price: '35.0'))
          ],
        ),),
    ),
    );
  }
}
