import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.backArrow = false,
    this.leadingIcon,
    this.action,
    this.onPressed,
  });

  final Widget? title;
  final bool backArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: backArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left, color: dark ? AppColors.white : AppColors.dark,),
              )
            : leadingIcon != null
            ? IconButton(onPressed: onPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.appBarHeight);
}
