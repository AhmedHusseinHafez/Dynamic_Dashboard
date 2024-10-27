import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/last_section.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/quick_invoice.dart';

import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: CustomDrawer(),
          ),
          SizedBox(width: 32),
          Expanded(
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
          SizedBox(width: 24),
          Expanded(
            flex: 2,
            child: LastSection(),
          ),
        ],
      ),
    );
  }
}
