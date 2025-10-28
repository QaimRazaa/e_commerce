import 'package:e_commerce/data/repositories/user/user_repository.dart';
import 'package:e_commerce/features/personalization/models/user_model.dart';
import 'package:e_commerce/utils/popups/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        final nameParts = UserModel.nameParts(
          userCredentials.user!.displayName ?? '',
        );
        final username = UserModel.generateUsername(
          userCredentials.user!.displayName ?? '',
        );

        final user = UserModel(
          id: userCredentials.user!.uid,
          email: userCredentials.user!.email ?? '' ,
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          firstName: nameParts[0],
          username: username,
          profilePicture: userCredentials.user!.photoURL ?? '',
        );

        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      CustomSnackBar.warningSnackBar(
        title: 'Data not saved',
        message: 'Something went wrong while saving your information',
      );
    }
  }
}
