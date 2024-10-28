import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                foregroundColor:
                    const WidgetStatePropertyAll(ColorManager.primary),
                backgroundColor: const WidgetStatePropertyAll(
                  ColorManager.white,
                ),
              ),
          onPressed: () {},
          child: Text(
            StringsManager.addMoreDetails,
            style:
                StyleManager.getRegularStyle(context, fontSize: FontSize.s18),
          ),
        ),
      ),
      const SizedBox(width: 24),
      Expanded(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(StringsManager.sendMoney),
        ),
      ),
    ]);
  }
}
