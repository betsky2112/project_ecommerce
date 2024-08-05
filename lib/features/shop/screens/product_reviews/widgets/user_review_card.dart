import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project_ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(EcommerceImages.userProfileImage1),
                ),
                const SizedBox(width: EcommerceSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: EcommerceSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const ERatingBarIndicator(rating: 4),
            const SizedBox(width: EcommerceSizes.spaceBtwItems),
            Text('01 Nov 2023', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: EcommerceSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interfaceof the app is quite intuitive. I was able to navigate and make purchaces seamlessly. Great job!',
          trimLines: 2,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          trimMode: TrimMode.Line,
          moreStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: EcommerceColors.primary),
          lessStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: EcommerceColors.primary),
        ),
        const SizedBox(height: EcommerceSizes.spaceBtwItems),

        // Company Review
        ERoundedContainer(
          backgroundColor: dark ? EcommerceColors.darkerGrey : EcommerceColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(EcommerceSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('E Store', style: Theme.of(context).textTheme.bodyLarge),
                    Text('02 Nov 2023', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: EcommerceSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interfaceof the app is quite intuitive. I was able to navigate and make purchaces seamlessly. Great job!',
                  trimLines: 2,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold, color: EcommerceColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold, color: EcommerceColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: EcommerceSizes.spaceBtwSections),
      ],
    );
  }
}
