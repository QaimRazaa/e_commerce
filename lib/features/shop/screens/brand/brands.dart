import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/products_cards/brandcard.dart';
import 'package:e_commerce/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Brands'), backArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SectionHeading(title: 'Brands'),
              SizedBox(height: Sizes.spaceBetweenItems),
              GirdLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) =>
                    BrandCard(showBorder: true, title: 'Nike' , onTap: () => Get.to(() => BrandProducts()),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
