import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class ETernsAndConditionCheckbox extends StatelessWidget {
  const ETernsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          width: EcommerceSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: EcommerceTexts.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: EcommerceTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark
                          ? EcommerceColors.white
                          : EcommerceColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? EcommerceColors.white
                          : EcommerceColors.primary,
                    ),
              ),
              TextSpan(
                text: EcommerceTexts.and,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: EcommerceTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark
                          ? EcommerceColors.white
                          : EcommerceColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? EcommerceColors.white
                          : EcommerceColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
