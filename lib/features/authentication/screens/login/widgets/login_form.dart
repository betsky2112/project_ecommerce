import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: EcommerceSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: EcommerceTexts.email,
              ),
            ),
            const SizedBox(
              height: EcommerceSizes.spaceBtwInputFields,
            ),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: EcommerceTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: EcommerceSizes.spaceBtwInputFields / 2,
            ),

            // Remember me dan forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(EcommerceTexts.rememberMe),
                  ],
                ),

                // Forgot password
                TextButton(
                  onPressed: () {},
                  child: const Text(EcommerceTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(
              height: EcommerceSizes.spaceBtwSections,
            ),

            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(EcommerceTexts.signIn),
              ),
            ),
            const SizedBox(
              height: EcommerceSizes.spaceBtwItems,
            ),

            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(EcommerceTexts.createAccount),
              ),
            ),
            // const SizedBox(
            //   height: EcommerceSizes.spaceBtwSections,
            // ),
          ],
        ),
      ),
    );
  }
}