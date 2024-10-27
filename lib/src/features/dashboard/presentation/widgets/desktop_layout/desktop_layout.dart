import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/background_container.dart';

import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/quick_invoice.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

class LastSection extends StatelessWidget {
  const LastSection({
    super.key,
  });

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
              MyCard()
            ],
          ),
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: ColorManager.primary,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AssetsManager.imagesMyCard,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 31,
            end: 24,
            top: 20,
            bottom: 27,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _cardListTile(),
              const Spacer(),
              Text(
                "0918 8124 0042 8129",
                style: StyleManager.getRegularStyle(
                  fontSize: FontSize.s24,
                  color: ColorManager.white,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "12/20 - 124",
                style: StyleManager.getLightStyle(
                  fontSize: FontSize.s16,
                  color: ColorManager.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardListTile() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 0, end: 45 - 24),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        titleTextStyle: StyleManager.getLightStyle(
          fontSize: FontSize.s16,
          color: ColorManager.white,
        ),
        subtitleTextStyle: StyleManager.getRegularStyle(
          fontSize: FontSize.s20,
          color: ColorManager.white,
        ),
        title: const Text("Name card"),
        subtitle: const Text("Syah Bandi"),
        trailing: SvgPicture.asset(AssetsManager.svgGallery),
      ),
    );
  }
}
