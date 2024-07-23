import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
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
                    EcommerceImages.deliveredEmailIllustration),
                width: EcommerceHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // Title and Subtitle
              Text(
                EcommerceTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),
              Text(
                EcommerceTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(EcommerceTexts.done),
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
