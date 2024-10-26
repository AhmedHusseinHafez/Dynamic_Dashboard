import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        StringsManager.allExpenses,
        style: StyleManager.getMediumStyle(
          fontSize: FontSize.s20,
        ),
      ),
      const Spacer(),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.borderGray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(children: [
          Text(
            StringsManager.monthly,
            style: StyleManager.getMediumStyle(
              fontSize: FontSize.s16,
            ),
          ),
          const SizedBox(width: 18),
          SvgPicture.asset(AssetsManager.svgArrowDown),
        ]),
      ),
    ]);
  }
}
