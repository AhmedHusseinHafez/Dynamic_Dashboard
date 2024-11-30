import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/listtile_model.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeItem = 0;
  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: CustomListTileModel.getDrawerItemsList()
          .map((model) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: DrawerItem(
                  isActive: false,
                  model: model,
                  onTap: () {},
                ),
              ))
          .toList(),
    );
 
  }
}
