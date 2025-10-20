import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        backArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              CartItems(showAddRemoveButtons: false),
              SizedBox(height: Sizes.spaceBetweenSections),

              CouponCode(),
              SizedBox(height: Sizes.spaceBetweenSections),

              RoundedContainer(
                padding: EdgeInsets.all(Sizes.md),
                showBorder: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                child: Column(
                  children: [
                    BillingPayment(),
                    SizedBox(height: Sizes.spaceBetweenItems,),
                    Divider(),
                    SizedBox(height: Sizes.spaceBetweenItems,),
                    BillingAddress(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

