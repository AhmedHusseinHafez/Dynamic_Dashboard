import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/last_section.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(height: 24),
            QuickInvoice(),
            LastSection(),
          ],
        ),
      ),
    );
  }
}
