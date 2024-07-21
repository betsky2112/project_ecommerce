import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/common/styles/spacing_styles.dart';
import 'package:project_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:project_ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:project_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:project_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EcommerceSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title and subtitle
              const ELoginHeader(),
              const ELoginForm(),

              // Divider
              EFormDivider(
                dividerText: EcommerceTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: EcommerceSizes.spaceBtwSections,
              ),

              // Footer
              const ESocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
