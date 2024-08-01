import 'package:flutter/material.dart';
import 'package:project_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project_ecommerce/utils/constants/colors.dart';
import 'package:project_ecommerce/utils/helpers/helper_functions.dart';

class EChoiceChip extends StatelessWidget {
  const EChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = EcommerceHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? EcommerceColors.white : null),
        avatar: isColor
            ? ECircularContainer(
                width: 50, height: 50, backgroundColor: EcommerceHelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? EcommerceHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
