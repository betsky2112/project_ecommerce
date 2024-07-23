import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              EcommerceTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: EcommerceSizes.spaceBtwItems),
            Text(
              EcommerceTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: EcommerceSizes.spaceBtwSections * 2),

            // Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: EcommerceTexts.email,
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
              ),
            ),
            const SizedBox(height: EcommerceSizes.spaceBtwSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPasswordScreen()),
                child: const Text(EcommerceTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
