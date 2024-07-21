import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class EcommerceSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: EcommerceSizes.appBarHeight,
    left: EcommerceSizes.defaultSpace,
    bottom: EcommerceSizes.defaultSpace,
    right: EcommerceSizes.defaultSpace,
  );
}
