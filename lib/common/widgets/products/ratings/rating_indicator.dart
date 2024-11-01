import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';

class ERatingBarIndicator extends StatelessWidget {
  const ERatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: EcommerceColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: EcommerceColors.primary),
    );
  }
}
