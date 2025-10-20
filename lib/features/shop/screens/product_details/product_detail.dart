import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_cart.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomCart(),
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
                  SizedBox(height: Sizes.spaceBetweenItems),
                  ProductAttributes(),
                  SizedBox(height: Sizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: Sizes.spaceBetweenSections),
                  SectionHeading(title: 'Description'),
                  SizedBox(height: Sizes.spaceBetweenItems),
                  ReadMoreText(
                    'This is a product description for Green Nike Sports shoes. There are more things that can be added but i am just practicing and nothing else',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: Sizes.spaceBetweenItems,),
                  Divider(),
                  SizedBox(height: Sizes.spaceBetweenItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews(199)'),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3 , size: 18,) , )
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
