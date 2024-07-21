import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: EcommerceHelperFunctions.screenWidth() * 0.8,
            height: EcommerceHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(
            height: EcommerceSizes.spaceBtwItems,
          ),
          Text(subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
