import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/styles/shadows.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project_ecommerce/common/widgets/icons/e_circular_icon.dart';
import 'package:project_ecommerce/common/widgets/images/e_rounded_image.dart';
import 'package:project_ecommerce/common/widgets/texts/e_brand_title_text_with_verified_icon.dart';
import 'package:project_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:project_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius:
              BorderRadius.circular(EcommerceSizes.productImageRadius),
          color: dark ? EcommerceColors.darkGrey : EcommerceColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist button, Discount tag
            ERoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(EcommerceSizes.sm),
              backgroundColor:
                  dark ? EcommerceColors.dark : EcommerceColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const ERounderImage(
                    imageUrl: EcommerceImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: ERoundedContainer(
                      radius: EcommerceSizes.sm,
                      backgroundColor:
                          EcommerceColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: EcommerceSizes.sm,
                        vertical: EcommerceSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: EcommerceColors.black),
                      ),
                    ),
                  ),

                  // Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: ECircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: EcommerceSizes.spaceBtwItems / 2),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: EcommerceSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: EcommerceSizes.spaceBtwItems / 2),
                  EBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),

            const Spacer(),

            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: EcommerceSizes.sm),
                  child: EProductPriceText(
                    price: '35.5',
                  ),
                ),

                // Add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: EcommerceColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(EcommerceSizes.cardRadiusMd),
                      bottomRight: Radius.circular(
                        EcommerceSizes.productImageRadius,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: EcommerceSizes.iconLg * 1.2,
                    height: EcommerceSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: EcommerceColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
