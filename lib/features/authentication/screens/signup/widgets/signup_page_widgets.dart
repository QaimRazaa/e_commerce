import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: Sizes.spaceBetweenInputFields),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Sizes.spaceBetweenInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: AppTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenSections),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              SizedBox(width: Sizes.spaceBetweenItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${AppTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '${AppTexts.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: dark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                        dark ? AppColors.white : AppColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: '${AppTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: AppTexts.termsOfUse,
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: dark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                        dark ? AppColors.white : AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Sizes.spaceBetweenSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(VerifyEmailScreen());
              },
              child: Text(AppTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
