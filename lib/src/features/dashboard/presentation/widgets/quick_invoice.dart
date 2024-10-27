import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/listtile_model.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/background_container.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/buttons.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_listtile.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/quick_invoice_header.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/text_form.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return BackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 24),
          Text(
            StringsManager.latestTransaction,
            style: StyleManager.getRegularStyle(fontSize: FontSize.s16),
          ),
          const SizedBox(height: 12),
          _buildListView(scrollController),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          const MyTextForm(),
          const SizedBox(height: 24),
          const Buttons(),
        ],
      ),
    );
  }

  Widget _buildListView(ScrollController scrollController) {
    return Scrollbar(
      controller: scrollController,
      child: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: CustomListTileModel.getQuickInvoiceItemsList()
              .map((e) => IntrinsicWidth(child: CustomListTile(model: e)))
              .toList(),
        ),
      ),
    );

    // return SizedBox(
    //   height: 75,
    //   child: Scrollbar(
    //     controller: scrollController,
    //     child: ListView.separated(
    //       controller: scrollController,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) => IntrinsicWidth(
    //         child: CustomListTile(
    //           model: CustomListTileModel.getQuickInvoiceItemsList()[index],
    //         ),
    //       ),
    //       separatorBuilder: (context, index) => const SizedBox(width: 12),
    //       itemCount: CustomListTileModel.getQuickInvoiceItemsList().length,
    //     ),
    //   ),
    // );
  }
}
