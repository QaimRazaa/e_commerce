import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/rounded_images.dart';
import 'package:e_commerce/common/widgets/products/products_cards/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Sports'), backArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              RoundedImages(
                imagePath: AppImages.promoBanner4,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: Sizes.spaceBetweenSections),
              Column(
                children: [
                  SectionHeading(
                    title: 'Sports short',
                    onPressed: () {},
                    actionButton: true,
                  ),
                  SizedBox(height: Sizes.spaceBetweenSections / 2),
                  SizedBox(
                    height: 125,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(width: Sizes.spaceBetweenItems,),
                      itemBuilder: (context, index) => ProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
