import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../products/products_cards/brandcard.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: Sizes.spaceBetweenItems),
      padding: EdgeInsets.all(Sizes.md),
      child: Column(
        children: [BrandCard(showBorder: false, title: 'Nike'),
          SizedBox(height: Sizes.spaceBetweenItems,),
          Row(
              children:
              images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],

      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(child: RoundedContainer(
    height: 100,
    padding: EdgeInsets.all(Sizes.md),
    margin: EdgeInsets.only(right: Sizes.sm),
    backgroundColor: HelperFunctions.isDarkMode(context) ? AppColors.darkerGrey : AppColors.light,
    child: Image(image: AssetImage(image),fit: BoxFit.cover,),
  ));
}