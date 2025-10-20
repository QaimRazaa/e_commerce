import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(title: 'Payment Method' , buttonTitle: 'Change', actionButton: true, onPressed: (){},),
        SizedBox(height: Sizes.spaceBetweenItems / 2,),
        RoundedContainer(
          width: 60,
          height: 35,
          backgroundColor: dark ? AppColors.light : AppColors.white,
          padding: EdgeInsets.all(Sizes.sm),
          child: Image(image: AssetImage(AppImages.payPal,),fit: BoxFit.contain,),
        )
      ],
    );
  }
}
