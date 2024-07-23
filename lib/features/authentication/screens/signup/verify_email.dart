import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:project_ecommerce/features/authentication/screens/login/login.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(
                  EcommerceImages.deliveredEmailIllustration,
                ),
                width: EcommerceHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // Title and Subtitle
              Text(
                EcommerceTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),
              Text(
                'support@coding.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),
              Text(
                EcommerceTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: EcommerceImages.staticSuccessIllustration,
                      title: EcommerceTexts.yourAccountCreatedTitle,
                      subTitle: EcommerceTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(EcommerceTexts.tContinue),
                ),
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(EcommerceTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
