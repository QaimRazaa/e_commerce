import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/text/brand_title_text_with_verified_icon.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        action: [CartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxScroll) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? AppColors.black : AppColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(Sizes.defaultSpace),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    SizedBox(height: Sizes.spaceBetweenItems),
                    SearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: Sizes.spaceBetweenItems),

                    SectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                      actionButton: true,
                    ),
                    SizedBox(height: Sizes.spaceBetweenItems / 2),

                    GirdLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_,index) {
                      return GestureDetector(
                        onTap: () {},
                        child: RoundedContainer(
                          padding: EdgeInsets.all(Sizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              Flexible(
                                child: CircularImage(
                                  image: AppImages.clothIcon,
                                  isNetworkImage: false,
                                  backgroundColor: Colors.transparent,
                                  overlayColor: dark
                                      ? AppColors.white
                                      : AppColors.black,
                                ),
                              ),
                              SizedBox(height: Sizes.spaceBetweenItems / 2),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: Sizes.spaceBetweenItems / 2.5),
                                    TBrandTitleWithVerifiedIcon(
                                      title: 'Nike',
                                      brandTextSize: TextSizes.large,
                                    ),
                                    Text(
                                      '256 Products',
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),


                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
