import 'package:e_commerce/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),

            Padding(
              padding: EdgeInsets.only(
                right: Sizes.defaultSpace,
                left: Sizes.defaultSpace,
                bottom: Sizes.defaultSpace,
              ),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductData(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

