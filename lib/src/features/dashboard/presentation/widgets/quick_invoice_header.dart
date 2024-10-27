import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        StringsManager.quickInvoice,
        style: StyleManager.getMediumStyle(
          fontSize: FontSize.s20,
        ),
      ),
      const Spacer(),
      Container(
        width: 48,
        height: 48,
        decoration: const ShapeDecoration(
          color: ColorManager.whiteSmoke,
          shape: OvalBorder(),
        ),
        child: const Icon(Icons.add, color: ColorManager.primary),
      ),
    ]);
  }
}
