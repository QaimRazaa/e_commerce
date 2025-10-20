import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_details.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:e_commerce/navigation_bar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    BillingAmountDetails(),
                    SizedBox(height: Sizes.spaceBetweenItems),
                    Divider(),
                    SizedBox(height: Sizes.spaceBetweenItems),
                    BillingPayment(),
                    SizedBox(height: Sizes.spaceBetweenItems),
                    BillingAddress(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              imagePath: AppImages.successfulPaymentIcon,
              title: 'Payment Successful',
              subtitle: 'Your Product will be delivered soon!',
              onPressed: () => Get.offAll(CustomNavigationBar()),
            ),
          ),
          child: Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
