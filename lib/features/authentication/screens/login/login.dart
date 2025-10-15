import 'package:e_commerce/common/styles/spacing_style.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_page_widgets.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(dark: dark),
              LoginForm(),
              LoginFormDivider(dividerText: AppTexts.signInWith.capitalize!,),
              SizedBox(height: Sizes.spaceBetweenSections),
              LoginSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


