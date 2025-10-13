import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final currentIndex = 0.obs;

  void updatePageIndex(index){
    currentIndex.value = index;
  }
}