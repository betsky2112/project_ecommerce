import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:project_ecommerce/common/widgets/icons/e_circular_icon.dart';
import 'package:project_ecommerce/common/widgets/images/e_rounded_image.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EProductImageSlider extends StatelessWidget {
  const EProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return ECurvedEdgeWidget(
      child: Container(
        color: dark ? EcommerceColors.darkerGrey : EcommerceColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(EcommerceSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(EcommerceImages.productImage5),
                  ),
                ),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: EcommerceSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: EcommerceSizes.spaceBtwItems,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (_, index) => ERounderImage(
                    width: 80,
                    imageUrl: EcommerceImages.productImage3,
                    backgroundColor: dark ? EcommerceColors.dark : EcommerceColors.white,
                    border: Border.all(color: EcommerceColors.primary),
                    padding: const EdgeInsets.all(EcommerceSizes.sm),
                  ),
                ),
              ),
            ),

            // Appbar Icons
            const EAppbar(
              showBackArrow: true,
              actions: [
                ECircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
