import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/ratings/rating_bar_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Reviews & Ratings'), backArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use',
              ),
              SizedBox(height: Sizes.spaceBetweenItems),

              OverallProductRating(),
              CustomRatingBar(rating: 3,),
              Text('12,600', style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: Sizes.spaceBetweenSections),

              UserReviewCard(),
              UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}

