import 'package:e_commerce/common/widgets/loaders/animation_loader.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFullScreenLoader {
  static void openLoadingDialog(String text, String animation){
    showDialog(
        context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
          canPop: false,
          child: Container(
            color: HelperFunctions.isDarkMode(Get.context!) ? AppColors.dark : AppColors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 250,),
                AnimationLoaderWidget(text: text, animation: animation)
              ],
            ),
          ))
    );
  }
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}

