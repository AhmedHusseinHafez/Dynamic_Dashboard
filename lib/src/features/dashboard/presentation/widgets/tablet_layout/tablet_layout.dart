import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/last_section.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24),
                AllExpenses(),
                SizedBox(height: 24),
                QuickInvoice(),
                LastSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
