import 'package:flutter/material.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EFormDivider extends StatelessWidget {
  const EFormDivider({
    super.key,
    required this.dividerText,
  });
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? EcommerceColors.darkGrey : EcommerceColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? EcommerceColors.darkGrey : EcommerceColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
