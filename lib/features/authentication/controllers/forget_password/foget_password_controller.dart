import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce/features/authentication/screens/password_config/reset_password.dart';
import 'package:e_commerce/utils/popups/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      CustomFullScreenLoader.openLoadingDialog(
        'Processing your request...',
        AppImages.docerAnimation,
      );
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        CustomFullScreenLoader.stopLoading();
        return;
      }
      if (!forgetPasswordFormKey.currentState!.validate()) {
        CustomFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(
        email.text.trim(),
      );

      CustomFullScreenLoader.stopLoading();
      CustomSnackBar.successSnackBar(
        title: 'Email Sent',
        message: 'Email link sent to Reset your password'.tr,
      );

      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      CustomFullScreenLoader.stopLoading();
      CustomSnackBar.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      CustomFullScreenLoader.openLoadingDialog(
        'Processing your request...',
        AppImages.docerAnimation,
      );
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        CustomFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      CustomFullScreenLoader.stopLoading();
      CustomSnackBar.successSnackBar(
        title: 'Email Sent',
        message: 'Email link sent to Reset your password'.tr,
      );

    } catch (e) {
      CustomFullScreenLoader.stopLoading();
      CustomSnackBar.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
