import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:project_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:project_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:project_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:project_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: EcommerceImages.onBoardingImage1,
                title: EcommerceTexts.onBoardingTitle1,
                subTitle: EcommerceTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EcommerceImages.onBoardingImage2,
                title: EcommerceTexts.onBoardingTitle2,
                subTitle: EcommerceTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EcommerceImages.onBoardingImage3,
                title: EcommerceTexts.onBoardingTitle3,
                subTitle: EcommerceTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
