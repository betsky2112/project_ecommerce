import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/device/device_utility.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class ESearchContainer extends StatelessWidget {
  const ESearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(
      horizontal: EcommerceSizes.defaultSpace,
    ),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: EcommerceDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(EcommerceSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? EcommerceColors.dark
                    : EcommerceColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(EcommerceSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: EcommerceColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? EcommerceColors.darkerGrey : Colors.grey,
              ),
              const SizedBox(width: EcommerceSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
