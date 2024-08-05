import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:project_ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:project_ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:project_ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const EAppbar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),

              // Overall Product Ratings
              const EOverallProductRating(),
              const ERatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
