import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:e_commerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/signup/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final dark = HelperFunctions.isDarkMode(context);

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      AppValidators.validateEmptyText('First name', value),
                  decoration: InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: Sizes.spaceBetweenInputFields),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      AppValidators.validateEmptyText('Last name', value),
                  controller: controller.lastName,
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
            validator: (value) =>
                AppValidators.validateEmptyText('Username', value),
            controller: controller.userName,
            decoration: InputDecoration(
              labelText: AppTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenInputFields),
          TextFormField(
            validator: (value) => AppValidators.validateEmail(value),
            controller: controller.email,
            decoration: InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenInputFields),
          TextFormField(
            validator: (value) => AppValidators.validatePhone(value),
            controller: controller.phoneNumber,
            decoration: InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenInputFields),
          Obx(
            () => TextFormField(
              validator: (value) => AppValidators.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: AppTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
              ),
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenSections),
          TermsAndConditionsCheckbox(),
          SizedBox(height: Sizes.spaceBetweenSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: Text(AppTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

