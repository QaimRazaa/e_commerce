import 'package:e_commerce/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    // List of category titles
    final List<String> titles = [
      'Sports',
      'Clothes',
      'Shoes',
      'Cosmetics',
      'Pets',
      'Toys',
      'Furniture',
      'Jewelry',
      'Electronics',
    ];

    final List<String> images = [
      AppImages.sportIcon,
      AppImages.clothIcon,
      AppImages.shoeIcon,
      AppImages.cosmeticIcon,
      AppImages.animalIcon,
      AppImages.toyIcon,
      AppImages.furnitureIcon,
      AppImages.jeweleryIcon,
      AppImages.electronicsIcon,
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return VerticalImageAndText(
            image: images[index],
            title: titles[index],
            onTap: () {
              if (titles[index] == 'Sports') {
                Get.to(() => const SubCategoriesScreen() );
              }
            },
          );
        },
      ),
    );
  }
}
