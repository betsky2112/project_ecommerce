import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:project_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:project_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:project_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:project_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:project_ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const EPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  EHomeAppBar(),
                  SizedBox(height: EcommerceSizes.spaceBtwSections),

                  // Searchbar
                  ESearchContainer(
                    text: 'Search in store',
                  ),
                  SizedBox(height: EcommerceSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(
                      left: EcommerceSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Heading
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: EcommerceSizes.spaceBtwItems),

                        // Categories Scrollview
                        EHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const EPromoSlider(
                    banners: [
                      EcommerceImages.promoBanner1,
                      EcommerceImages.promoBanner2,
                      EcommerceImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: EcommerceSizes.spaceBtwSections),

                  // Popular Products
                  EGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const EProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
