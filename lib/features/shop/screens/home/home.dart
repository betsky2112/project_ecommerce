import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:project_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  EHomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
