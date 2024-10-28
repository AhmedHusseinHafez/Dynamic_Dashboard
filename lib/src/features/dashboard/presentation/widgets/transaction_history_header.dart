import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringsManager.transactionHistory,
          style: StyleManager.getMediumStyle(
            context,
            fontSize: FontSize.s20,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll<TextStyle>(
              StyleManager.getLightStyle(context, fontSize: FontSize.s16),
            ),
          ),
          child: Text(StringsManager.seeAll),
        ),
      ],
    );
  }
}
