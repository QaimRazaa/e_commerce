import 'package:e_commerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/bottomsheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins.toString(),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
    fontFamily: GoogleFonts.poppins.toString(),
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
  );
}