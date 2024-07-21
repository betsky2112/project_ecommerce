import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/elevated_theme_button.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:project_ecommerce/utils/theme/custom_themes/text_theme.dart';

class EcommerceAppTheme {
  EcommerceAppTheme._(); // To avoid creating instances

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: EcommerceTextTheme.lightTextTheme,
    elevatedButtonTheme: EcommerceElecatedThemeButton.lightElevatedButtonTheme,
    appBarTheme: EcommerAppBarTheme.lightAppBarTheme,
    checkboxTheme: EcommerceCheckboxTheme.lightCheckboxTheme,
    chipTheme: EcommerceChipTheme.lightChipTheme,
    bottomSheetTheme: EcommerceBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: EcommerceOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: EcommerdTextFormField.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: EcommerceTextTheme.darkTextTheme,
    elevatedButtonTheme: EcommerceElecatedThemeButton.darkElevatedButtonTheme,
    appBarTheme: EcommerAppBarTheme.darkAppBarTheme,
    checkboxTheme: EcommerceCheckboxTheme.darkCheckboxTheme,
    chipTheme: EcommerceChipTheme.darkChipTheme,
    bottomSheetTheme: EcommerceBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: EcommerceOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: EcommerdTextFormField.darkInputDecorationTheme,
  );
}
