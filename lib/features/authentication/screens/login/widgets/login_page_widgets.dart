import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class LoginFormDivider extends StatelessWidget {
  const LoginFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

class LoginSocialButtons extends StatelessWidget {
  const LoginSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadiusGeometry.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: CustomSizes.iconMd,
              height: CustomSizes.iconMd,
              image: AssetImage(AppImages.google),
            ),
          ),
        ),
        SizedBox(width: CustomSizes.spaceBetweenItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadiusGeometry.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: CustomSizes.iconMd,
              height: CustomSizes.iconMd,
              image: AssetImage(AppImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: CustomSizes.spaceBetweenSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
              ),
            ),
            SizedBox(height: CustomSizes.spaceBetweenInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: CustomSizes.spaceBetweenInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(AppTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(AppTexts.forgotPassword),
                ),
              ],
            ),
            SizedBox(height: CustomSizes.spaceBetweenSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(AppTexts.signIn),
              ),
            ),
            SizedBox(height: CustomSizes.spaceBetweenItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(SignupScreen());
                },
                child: Text(AppTexts.createAccount),
              ),
            ),
            SizedBox(height: CustomSizes.spaceBetweenSections),
          ],
        ),
      ),
    );
  }
}

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? AppImages.lightAppLogo : AppImages.darkAppLogo,
          ),
        ),
        Text(
          AppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: CustomSizes.sm),
        Text(
          AppTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}