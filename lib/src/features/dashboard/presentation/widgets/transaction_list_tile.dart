import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/tran_model.dart';
import 'package:flutter/material.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    super.key,
    required this.model,
  });

  final TransactionListTileModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        visualDensity: VisualDensity.standard,
        titleTextStyle: StyleManager.getMediumStyle(
          fontSize: FontSize.s16,
        ),
        subtitleTextStyle: StyleManager.getLightStyle(
          fontSize: FontSize.s14,
          color: ColorManager.gray,
        ),
        title: Text(model.title),
        subtitle: Text(model.date),
        trailing: Text(model.amount,
            style: StyleManager.getMediumStyle(
              fontSize: FontSize.s20,
              color: (model.title == StringsManager.cashWithdrawal)
                  ? ColorManager.coral
                  : ColorManager.pastelGreen,
            )),
      ),
    );
  }
}
