import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:project_ecommerce/common/widgets/texts/e_brand_title_text_with_verified_icon.dart';
import 'package:project_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:project_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/enums.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale Price
        Row(
          children: [
            // Sale tag
            ERoundedContainer(
              radius: EcommerceSizes.sm,
              backgroundColor: EcommerceColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: EcommerceSizes.sm,
                vertical: EcommerceSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: EcommerceColors.black),
              ),
            ),
            const SizedBox(width: EcommerceSizes.spaceBtwItems),

            // Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: EcommerceSizes.spaceBtwItems),
            const EProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: EcommerceSizes.spaceBtwItems / 1.5),

        // Title
        const EProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: EcommerceSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const EProductTitleText(title: 'Status : '),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: EcommerceSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            ECircularImage(
              image: EcommerceImages.nikeLogo,
              width: 32,
              height: 32,
              overlayColor: dark ? EcommerceColors.white : EcommerceColors.black,
            ),
            const EBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
