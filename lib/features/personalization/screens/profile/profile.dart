import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:project_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:project_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:project_ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:project_ecommerce/utils/constants/image_strings.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppbar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EcommerceSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const ECircularImage(
                      image: EcommerceImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(onPressed: () {}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              // Details
              const SizedBox(height: EcommerceSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),

              // Heading Profile Info
              const ESectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),

              EProfileMenu(
                title: 'Name',
                value: 'Robert Siagian',
                onPressed: () {},
              ),
              EProfileMenu(
                title: 'Username',
                value: 'betsky2112',
                onPressed: () {},
              ),

              const SizedBox(height: EcommerceSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),

              // Heading Personal Info
              const ESectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),

              EProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '12345',
                icon: Iconsax.copy,
              ),
              EProfileMenu(
                  onPressed: () {}, title: 'E-mail', value: 'roberthussebastians@gmail.com'),
              EProfileMenu(onPressed: () {}, title: 'Phone Number', value: '08212121'),
              EProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              EProfileMenu(onPressed: () {}, title: 'Data of Birth', value: '21 Dec 2001'),
              const Divider(),
              const SizedBox(height: EcommerceSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
