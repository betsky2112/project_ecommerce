import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:project_ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:project_ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:project_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  EAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: EcommerceColors.white),
                    ),
                  ),

                  // User profile card
                  const EUserProfileTile(),
                  const SizedBox(height: EcommerceSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const ESectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: EcommerceSizes.spaceBtwItems),

                  const ESettingsmenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                  ),
                  const ESettingsmenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                  ),
                  const ESettingsmenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and completed orders',
                  ),
                  const ESettingsmenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                  ),
                  const ESettingsmenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                  ),
                  const ESettingsmenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kindof notification message',
                  ),
                  const ESettingsmenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                  ),

                  // App Settings
                  const SizedBox(height: EcommerceSizes.spaceBtwSections),
                  const ESectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: EcommerceSizes.spaceBtwItems),
                  const ESettingsmenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload data to your Cloud Firebase',
                  ),
                  ESettingsmenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ESettingsmenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  ESettingsmenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  // Logout button
                  const SizedBox(height: EcommerceSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: EcommerceSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
