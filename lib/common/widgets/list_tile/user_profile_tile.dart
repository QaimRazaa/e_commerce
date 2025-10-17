import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        image: AppImages.user,
        width: 50,
        height: 50,
      ),
      title: Text('Syed Qaim Raza', style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),),
      subtitle: Text('qaimr320@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),),
      trailing: IconButton(onPressed: () => Get.to(() => ProfileScreen()), icon: Icon(Iconsax.edit, color: AppColors.white,)),
    );
  }
}