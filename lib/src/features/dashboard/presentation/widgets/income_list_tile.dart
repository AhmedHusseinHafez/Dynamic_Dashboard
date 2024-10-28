import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class IncomeListTile extends StatelessWidget {
  const IncomeListTile(
      {super.key,
      required this.text,
      required this.color,
      required this.percentage});

  final String text;
  final Color color;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        tileColor: ColorManager.white,
        leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: color,
            shape: const OvalBorder(),
          ),
        ),
        title: Text(text),
        titleTextStyle: StyleManager.getLightStyle(
          context,
          fontSize: FontSize.s15,
        ),
        trailing: Text(
          "$percentage%",
          style: StyleManager.getLightStyle(
            context,
            fontSize: FontSize.s16,
            color: ColorManager.cyanBlueAzure,
          ),
        ),
      ),
    );
  }
}
