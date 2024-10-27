import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/background_container.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/detailed_income_chart.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/income_List_tile.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/income_header.dart';
import 'package:flutter/material.dart';

class InComeBody extends StatelessWidget {
  const InComeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundContainer(
      child: Column(
        children: [
          const IncomeHeader(),
          const SizedBox(height: 28),
          Row(
            children: [
              const Expanded(
                child: DetailedIncomeChart(),
              ),
              const SizedBox(width: 50),
              Expanded(
                child: _categories(),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _categories() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      IncomeListTile(
        text: StringsManager.designService,
        color: ColorManager.cyanBlueAzure,
        percentage: "40",
      ),
      IncomeListTile(
        text: StringsManager.designProduct,
        color: ColorManager.primary,
        percentage: "25",
      ),
      IncomeListTile(
        text: StringsManager.productRoyalti,
        color: ColorManager.drkCerulean,
        percentage: "20",
      ),
      IncomeListTile(
        text: StringsManager.other,
        color: ColorManager.lightBeige,
        percentage: "22",
      ),
    ]);
  }
}
