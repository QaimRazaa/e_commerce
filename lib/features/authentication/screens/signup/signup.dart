import 'package:e_commerce/features/authentication/screens/login/widgets/login_page_widgets.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_page_widgets.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: Sizes.spaceBetweenSections),
              SignUpFormWidget(),
              SizedBox(height: Sizes.spaceBetweenSections),
              LoginFormDivider(dividerText: AppTexts.signUpWith),
              SizedBox(height: Sizes.spaceBetweenSections),
              LoginSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
