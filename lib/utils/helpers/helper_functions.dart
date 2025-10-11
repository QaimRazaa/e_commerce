import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperFunctions {
  static Color getColor(String value) {
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'pink':
        return Colors.pink;
      case 'grey':
        return Colors.grey;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      default:
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
