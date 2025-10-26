import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/popups/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'dart:async';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();
  Timer? _emailVerificationTimer;

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      CustomSnackBar.successSnackBar(title: 'Email Sent',
          message: 'Please check your inbox and verify your email');
    } catch (e) {
      CustomSnackBar.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  setTimerForAutoRedirect() {
    _emailVerificationTimer = Timer.periodic(Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() =>
            SuccessScreen(imagePath: AppImages.successfullyRegisterAnimation,
                title: AppTexts.accountCreated,
                subtitle: AppTexts.accountCreatedSubtitle,
                onPressed: () => AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

  checkEmailVerificationStatus() async {
    await FirebaseAuth.instance.currentUser?.reload();
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      _emailVerificationTimer?.cancel();
      _emailVerificationTimer = null;
      Get.off(() =>
          SuccessScreen(imagePath: AppImages.successfullyRegisterAnimation,
              title: AppTexts.accountCreated,
              subtitle: AppTexts.accountCreatedSubtitle,
              onPressed: () => AuthenticationRepository.instance.screenRedirect()));
    }

  }
  @override
  void onClose() {
    _emailVerificationTimer?.cancel();
    _emailVerificationTimer = null;
    super.onClose();
  }

}
