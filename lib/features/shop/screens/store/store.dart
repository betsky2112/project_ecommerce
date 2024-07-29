import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:project_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:project_ecommerce/common/widgets/products/cart/car_menu_icon.dart';
import 'package:project_ecommerce/common/widgets/texts/e_brand_title_text_with_verified_icon.dart';
import 'package:project_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/enums.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppbar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ECartCounterIcon(
            onPressed: () {},
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor:
                  dark ? EcommerceColors.black : EcommerceColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // SearchBar
                    const SizedBox(height: EcommerceSizes.spaceBtwItems),
                    const ESearchContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                        height: EcommerceSizes.spaceBtwSections / 1.5),

                    // Featured Brands
                    ESectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: EcommerceSizes.spaceBtwItems / 1.5),

                    EGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ERoundedContainer(
                            padding: const EdgeInsets.all(EcommerceSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                // Icon
                                Flexible(
                                  child: ECircularImage(
                                    isNetworkImage: false,
                                    image: EcommerceImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: dark
                                        ? EcommerceColors.white
                                        : EcommerceColors.black,
                                  ),
                                ),
                                const SizedBox(
                                    height: EcommerceSizes.spaceBtwItems / 2),

                                // Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const EBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSizes: TextSizes.large,
                                      ),
                                      Text(
                                        '256 Products TESTTTTEERR WITHHHH',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
