import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/network_manager.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:e_commerce/utils/popups/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();


  Future<void> signup() async {
    try {
      CustomFullScreenLoader.openLoadingDialog(
          'We are Processing your Information', AppImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      if (!privacyPolicy.value) {
        CustomSnackBar.warningSnackBar(title: 'Accept Privacy Policy',
            message: 'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use');
        return;
      }
    } catch (e) {
      CustomSnackBar.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      CustomFullScreenLoader.stopLoading();
    }
  }
}