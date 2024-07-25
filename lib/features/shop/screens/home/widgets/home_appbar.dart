import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:project_ecommerce/common/widgets/products/cart/car_menu_icon.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/text_strings.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            EcommerceTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: EcommerceColors.grey),
          ),
          Text(
            EcommerceTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: EcommerceColors.white),
          ),
        ],
      ),
      actions: [
        ECartCounterIcon(
          onPressed: () {},
          iconColor: EcommerceColors.white,
        )
      ],
    );
  }
}
