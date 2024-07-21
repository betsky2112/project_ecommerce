import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class ESocialButtons extends StatelessWidget {
  const ESocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: EcommerceColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(EcommerceImages.google),
              width: EcommerceSizes.iconMd,
              height: EcommerceSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: EcommerceSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: EcommerceColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(EcommerceImages.facebook),
              width: EcommerceSizes.iconMd,
              height: EcommerceSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
