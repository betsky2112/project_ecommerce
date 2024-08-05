import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:project_ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:project_ecommerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(
          () => const AddNewAddressScreen(),
        ),
        backgroundColor: EcommerceColors.primary,
        child: const Icon(Iconsax.add, color: EcommerceColors.white),
      ),
      appBar: EAppbar(
        showBackArrow: true,
        title: Text('Address', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(EcommerceSizes.defaultSpace),
          child: Column(
            children: [
              ESingleAddress(selectedAddress: true),
              ESingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
