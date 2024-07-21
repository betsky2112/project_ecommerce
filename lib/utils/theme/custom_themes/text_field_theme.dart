import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class EcommerdTextFormField {
  EcommerdTextFormField._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EcommerceColors.darkGrey,
    suffixIconColor: EcommerceColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
        fontSize: EcommerceSizes.fontSizeMd, color: EcommerceColors.black),
    hintStyle: const TextStyle().copyWith(
        fontSize: EcommerceSizes.fontSizeSm, color: EcommerceColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle()
        .copyWith(color: EcommerceColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: EcommerceColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: EcommerceColors.darkGrey,
    suffixIconColor: EcommerceColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: EcommerceSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
        fontSize: EcommerceSizes.fontSizeMd, color: EcommerceColors.white),
    hintStyle: const TextStyle().copyWith(
        fontSize: EcommerceSizes.fontSizeSm, color: EcommerceColors.white),
    floatingLabelStyle: const TextStyle()
        .copyWith(color: EcommerceColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EcommerceColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EcommerceSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: EcommerceColors.warning),
    ),
  );
}
