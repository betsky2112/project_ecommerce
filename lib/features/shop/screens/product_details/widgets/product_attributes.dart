import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:project_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:project_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EProductAttributes extends StatelessWidget {
  const EProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing and Description
        ERoundedContainer(
          padding: const EdgeInsets.all(EcommerceSizes.md),
          backgroundColor: dark ? EcommerceColors.darkerGrey : EcommerceColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock
              Row(
                children: [
                  const ESectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: EcommerceSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const EProductTitleText(title: 'Price : ', smallSize: true),
                          // Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: EcommerceSizes.spaceBtwItems),

                          // Sale Price
                          const EProductPriceText(price: '20'),
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const EProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              // Variation Description
              const EProductTitleText(
                title: 'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: EcommerceSizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: EcommerceSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(height: EcommerceSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 35',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
