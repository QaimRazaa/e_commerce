import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banner});

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banner.map((url) => RoundedImages(imagePath: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndex(index),
          ),
        ),
        SizedBox(height: CustomSizes.spaceBetweenItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banner.length; i++)
                CircularContainer(
                  margin: EdgeInsets.only(right: 10),
                  width: 18,
                  height: 4,
                  backgroundColor: controller.currentIndex.value == i ? AppColors.primary : AppColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
