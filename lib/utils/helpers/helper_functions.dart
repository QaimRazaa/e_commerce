import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperFunctions {
  static Color? getColor(String value) {

    if (value == 'green') {
      return Colors.green;
    } else if (value == 'red') {
      return Colors.red;
    } else if (value == 'blue') {
      return Colors.blue;
    } else if (value == 'pink') {
      return Colors.pink;
    } else if (value == 'grey') {
      return Colors.grey;
    } else if (value == 'purple') {
      return Colors.purple;
    } else if (value == 'black') {
      return Colors.black;
    } else if (value == 'white') {
      return Colors.white;
    } else {
      return Colors.transparent;
    }
  }


  static void showSnackBar(BuildContext context, String message,
      {Color background = Colors.black}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: background,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static Future<void> showAlert(
      BuildContext context, {
        required String title,
        required String message,
      }) async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static String truncateText(String text, {int limit = 20}) {
    if (text.length <= limit) return text;
    return '${text.substring(0, limit)}...';
  }

  static bool isDarkMode(BuildContext context) {
      return Theme.of(context).brightness == Brightness.dark;}

  static Size screenSize() {
      return MediaQuery.of(Get.context!).size;}

  static double screenWidth()  {
    return MediaQuery.of(Get.context!).size.width;}

  static double screenHeight()  {
    return MediaQuery.of(Get.context!).size.height;}
}
