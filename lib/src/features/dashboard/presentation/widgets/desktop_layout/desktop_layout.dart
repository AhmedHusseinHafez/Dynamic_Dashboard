import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';

import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/quick_invoice.dart';

import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            child: CustomDrawer(),
          ),
          const SizedBox(width: 32),
          const Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(height: 40),
                AllExpenses(),
                SizedBox(height: 24),
                QuickInvoice(),
              ],
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            flex: 2,
            child: Container(
              color: ColorManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
