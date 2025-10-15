import 'package:e_commerce/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar_widget.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/text/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppBar(),
                  SizedBox(height: Sizes.spaceBetweenSections),
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: Sizes.spaceBetweenSections),

                  Padding(
                    padding: EdgeInsets.only(left: Sizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Categories',
                          textColor: AppColors.white,
                        ),
                        SizedBox(height: Sizes.spaceBetweenItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Sizes.md),
              child: Column(
                children: [
                  PromoSlider(
                    banner: [
                      AppImages.promoBanner1,
                      AppImages.promoBanner2,
                      AppImages.promoBanner3,
                      AppImages.promoBanner4,
                    ],
                  ),
                  SizedBox(height: Sizes.spaceBetweenSections),
                  GirdLayout(itemCount: 4, itemBuilder: (_,index) => ProductCardVertical(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


