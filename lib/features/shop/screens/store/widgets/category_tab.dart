import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [ Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            BrandShowCase(
              images: [
                AppImages.productImage1,
                AppImages.productImage20,
                AppImages.productImage21,
              ],
            ),
            SizedBox(height: Sizes.spaceBetweenItems),


            SectionHeading(
              title: 'You might like',
              onPressed: () {},
              actionButton: true,
            ),
            SizedBox(height: Sizes.spaceBetweenItems),

            GirdLayout(
              itemCount: 4,
              itemBuilder: (_, index) => ProductCardVertical(
                image: AppImages.productImage1,
                title: 'Nike Air Shoes',
                brand: 'Nike',
                price: '35.9',
              ),
            ),
          ],
        ),
      ),
    ]
    );
  }
}
