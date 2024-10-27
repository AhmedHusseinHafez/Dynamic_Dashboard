import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/tran_model.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/background_container.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_page_view.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/transaction_history_header.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';

class LastSection extends StatefulWidget {
  const LastSection({
    super.key,
  });

  @override
  State<LastSection> createState() => _LastSectionState();
}

class _LastSectionState extends State<LastSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        BackGroundContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringsManager.myCard,
                style: StyleManager.getMediumStyle(
                  fontSize: FontSize.s20,
                ),
              ),
              const SizedBox(height: 20),
              const CustomPageView(),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              const TransactionHistoryHeader(),
              const SizedBox(height: 20),
              Text(
                "13 April 2022",
                style: StyleManager.getLightStyle(
                  fontSize: FontSize.s16,
                  color: ColorManager.gray,
                ),
              ),
              const SizedBox(height: 16),
              _buildTransactionHistory(),
            ],
          ),
        ),
      ],
    );
  }

  Column _buildTransactionHistory() {
    return Column(
      children: List.generate(TransactionListTileModel.getTransactions().length,
          (index) {
        TransactionListTileModel model =
            TransactionListTileModel.getTransactions()[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: TransactionListTile(model: model),
        );
      }),
    );
  }
}
