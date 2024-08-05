import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:project_ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_chart_widget.dart';
import 'package:project_ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:project_ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:project_ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:project_ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:project_ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const EBottomAddToChart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            const EProductImageSlider(),

            // Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: EcommerceSizes.defaultSpace,
                left: EcommerceSizes.defaultSpace,
                bottom: EcommerceSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating and Share
                  const ERatingAndShare(),

                  // Price, Title, Stock and Brand
                  const EProductMetaData(),

                  // Attributes
                  const EProductAttributes(),
                  const SizedBox(height: EcommerceSizes.spaceBtwSections),

                  // Checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: EcommerceSizes.spaceBtwSections),

                  // Description
                  const ESectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: EcommerceSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: EcommerceSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ESectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () => Get.to(() => const ProductReviewsScreen()),
                      )
                    ],
                  ),
                  const SizedBox(height: EcommerceSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
