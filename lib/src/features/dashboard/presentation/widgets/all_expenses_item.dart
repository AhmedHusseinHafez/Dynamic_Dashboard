import 'dart:math';

import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/all_expenses_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.model,
    required this.isSelected,
  });
  final AllExpensesModel model;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? ColorManager.primary : ColorManager.borderGray,
          width: 1,
        ),
        color: isSelected ? ColorManager.primary : ColorManager.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            _customCircle(),
            const Spacer(),
            _arrowForward(),
          ]),
          const SizedBox(height: 34),
          Text(
            model.title,
            style: StyleManager.getRegularStyle(
              color: isSelected ? ColorManager.white : null,
              fontSize: FontSize.s16,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            model.date,
            style: StyleManager.getLightStyle(
              color: isSelected ? ColorManager.whiteSmoke : ColorManager.gray,
              fontSize: FontSize.s14,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            model.price,
            style: StyleManager.getMediumStyle(
              color: isSelected ? ColorManager.white : ColorManager.primary,
              fontSize: FontSize.s24,
            ),
          ),
        ],
      ),
    );
  }

  Transform _arrowForward() {
    return Transform.rotate(
      angle: pi / -2,
      child: SvgPicture.asset(
        AssetsManager.svgArrowDown,
        colorFilter: isSelected
            ? const ColorFilter.mode(
                ColorManager.white,
                BlendMode.srcIn,
              )
            : null,
      ),
    );
  }

  Container _customCircle() {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.all(14),
      decoration: ShapeDecoration(
        color: isSelected
            ? Colors.white.withOpacity(0.2)
            : ColorManager.whiteSmoke,
        shape: const OvalBorder(),
      ),
      child: SvgPicture.asset(
        model.image,
        colorFilter: ColorFilter.mode(
          isSelected ? ColorManager.white : ColorManager.primary,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
