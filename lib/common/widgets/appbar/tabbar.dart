import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/device/device_utility.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? EcommerceColors.black : EcommerceColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.center,
        indicatorColor: EcommerceColors.primary,
        labelColor: dark ? EcommerceColors.white : EcommerceColors.primary,
        unselectedLabelColor: EcommerceColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(EcommerceDeviceUtils.getAppBarHeight());
}
