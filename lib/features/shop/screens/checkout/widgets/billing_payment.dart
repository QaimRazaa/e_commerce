import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/text/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class BillingPayment extends StatelessWidget {
  const BillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(title: 'Payment Method' , buttonTitle: 'Change', actionButton: true, onPressed: (){},),
        SizedBox(height: Sizes.spaceBetweenItems / 2,),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AppColors.light : AppColors.white,
              padding: EdgeInsets.all(Sizes.sm),
              child: Image(image: AssetImage(AppImages.applePay), fit: BoxFit.contain,),
            ),
            SizedBox(width: Sizes.spaceBetweenItems / 2,),
            Text('Apple Pay' , style: Theme.of(context).textTheme.bodyLarge,)
          ],
        ),

      ],
    );
  }

}
