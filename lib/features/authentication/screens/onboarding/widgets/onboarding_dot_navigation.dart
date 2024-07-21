import 'package:flutter/material.dart';
import 'package:project_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/device/device_utility.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = EcommerceHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: EcommerceDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: EcommerceSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? EcommerceColors.light : EcommerceColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
