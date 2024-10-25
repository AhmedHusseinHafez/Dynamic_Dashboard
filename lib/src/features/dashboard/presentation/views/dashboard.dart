import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/app_layout.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/desktop_layout/desktop_layout.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/mobile_layout/mobile_layout.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/tablet_layout/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
