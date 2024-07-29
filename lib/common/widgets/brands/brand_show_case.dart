import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EBrandShowCase extends StatelessWidget {
  const EBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      showBorder: true,
      borderColor: EcommerceColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(EcommerceSizes.md),
      margin: const EdgeInsets.only(bottom: EcommerceSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Products Count
          const EBrandsCard(showBorder: false),
          const SizedBox(height: EcommerceSizes.spaceBtwItems),

          // Brand Top 3 Product Image
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Expanded(
      child: ERoundedContainer(
        height: 100,
        backgroundColor:
            dark ? EcommerceColors.darkGrey : EcommerceColors.light,
        margin: const EdgeInsets.only(right: EcommerceSizes.sm),
        padding: const EdgeInsets.all(EcommerceSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
