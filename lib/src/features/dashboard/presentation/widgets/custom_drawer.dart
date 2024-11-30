import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/listtile_model.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/custom_listtile.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/drawer_item.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/draweritemslistview.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomListTile(
              model: CustomListTileModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                image: AssetsManager.svgAvatar3,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const SliverToBoxAdapter(child: DrawerItemsListView()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
             const Spacer(),
                DrawerItem(
                  isActive: false,
                  onTap: () {},
                  model: CustomListTileModel(
                    title: StringsManager.settingSystem,
                    image: AssetsManager.svgSettings,
                  ),
                ),
                DrawerItem(
                  onTap: () {},
                  isActive: false,
                  model: CustomListTileModel(
                    title: StringsManager.logoutAccount,
                    image: AssetsManager.svgLogout,
                  ),
                ),
                const SizedBox(height: 48)
              ],
            ),
          )
        ],
      ),
    );

 
  }
}
