import 'package:espresso_dynamic_screen/src/app/app_layout.dart';
import 'package:espresso_dynamic_screen/src/core/resources/size_config.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/desktop_layout/desktop_layout.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/mobile_layout/mobile_layout.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/tablet_layout/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<ScaffoldState>();

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: key,
      appBar: width < SizeConfig.tablet ? _appBar(key) : null,
      drawer: width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }

  AppBar _appBar(GlobalKey<ScaffoldState> key) {
    return AppBar(
      forceMaterialTransparency: true,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          key.currentState!.openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
    );
  }
}
