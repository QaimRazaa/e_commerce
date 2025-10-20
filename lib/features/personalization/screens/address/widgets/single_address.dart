import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: EdgeInsets.all(Sizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? AppColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? AppColors.darkerGrey
          : AppColors.grey,
      margin: EdgeInsets.only(bottom: Sizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                        ? AppColors.light
                        : AppColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Qaim Raza',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                '+92 304 1234567',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '12345 House Number, 3rd Road, G-10/4, Islamabad, Pakistan',
                maxLines: 2,
                softWrap: true,
              ),
              SizedBox(height: Sizes.sm / 2),

              SizedBox(height: Sizes.sm / 2),
            ],
          ),
        ],
      ),
    );
  }
}
