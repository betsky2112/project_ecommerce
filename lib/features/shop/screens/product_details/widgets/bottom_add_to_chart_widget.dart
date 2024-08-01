import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/widgets/icons/e_circular_icon.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EBottomAddToChart extends StatelessWidget {
  const EBottomAddToChart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: EcommerceSizes.defaultSpace,
        vertical: EcommerceSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? EcommerceColors.darkerGrey : EcommerceColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(EcommerceSizes.cardRadiusLg),
          topRight: Radius.circular(EcommerceSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ECircularIcon(
                icon: Iconsax.minus,
                backgroundColor: EcommerceColors.darkGrey,
                width: 40,
                height: 40,
                color: EcommerceColors.white,
              ),
              const SizedBox(width: EcommerceSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: EcommerceSizes.spaceBtwItems),
              const ECircularIcon(
                icon: Iconsax.add,
                backgroundColor: EcommerceColors.black,
                width: 40,
                height: 40,
                color: EcommerceColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(EcommerceSizes.md),
              backgroundColor: EcommerceColors.black,
              side: const BorderSide(color: EcommerceColors.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
