import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:project_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:project_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:project_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                const EBrandShowCase(
                  images: [
                    EcommerceImages.productImage3,
                    EcommerceImages.productImage2,
                    EcommerceImages.productImage1
                  ],
                ),
                const SizedBox(height: EcommerceSizes.spaceBtwItems),

                // Products
                ESectionHeading(
                    title: 'You might like',
                    showActionButton: true,
                    onPressed: () {}),
                const SizedBox(height: EcommerceSizes.spaceBtwItems),

                EGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const EProductCardVertical()),
                const SizedBox(height: EcommerceSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
