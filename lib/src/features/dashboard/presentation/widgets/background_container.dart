import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class BackGroundContainer extends StatelessWidget {
  const BackGroundContainer({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
