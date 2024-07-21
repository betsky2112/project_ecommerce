import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:project_ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:project_ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                EcommerceTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // Form
              const ESignupForm(),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // Divider
              EFormDivider(
                dividerText: EcommerceTexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwSections),

              // Social Buttons
              const ESocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
