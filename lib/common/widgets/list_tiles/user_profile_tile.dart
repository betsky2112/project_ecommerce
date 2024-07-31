import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ECircularImage(
        image: EcommerceImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Robert Siagian',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: EcommerceColors.white),
      ),
      subtitle: Text(
        'roberthussebastians@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: EcommerceColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: EcommerceColors.white,
        ),
      ),
    );
  }
}
