import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/text/section_heading.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          actionButton: true,
          onPressed: () {},
        ),
        Text('Qaim Raza', style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: Sizes.spaceBetweenItems / 2),

        Row(
          children: [
            Icon(Iconsax.mobile, color: AppColors.darkGrey, size: 16),
            SizedBox(width: Sizes.spaceBetweenItems),
            Text(
              '+92 123 1234567',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(height: Sizes.spaceBetweenItems / 2),
        Row(
          children: [
            Icon(Iconsax.location, color: AppColors.darkGrey, size: 16),
            SizedBox(width: Sizes.spaceBetweenItems),
            Text(
              '12345 House, Islamabad, Pakistan',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}
