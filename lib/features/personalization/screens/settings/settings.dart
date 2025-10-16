import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: AppColors.white),
                    ),
                  ),
                  SizedBox(height: Sizes.spaceBetweenSections,),
                  ListTile(
                    leading: CircularImage(image: AppImages.user),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
