import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/listtile_model.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_listtile.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/draweritemslistview.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        // const SizedBox(height: 50),
        CustomListTile(
          model: CustomListTileModel(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            image: AssetsManager.svgAvatar3,
          ),
        ),
        const SizedBox(height: 8),
        const DrawerItemsListView(),
      ]),
    );
  }
}
