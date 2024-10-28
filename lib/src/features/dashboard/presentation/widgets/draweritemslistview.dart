import 'dart:math';

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
    double height = MediaQuery.sizeOf(context).height;

    return Expanded(
      child: ListView.separated(
        itemCount: CustomListTileModel.getDrawerItemsList().length,
        separatorBuilder: (BuildContext context, int index) {
          double minHeight = index == 4 ? max(height - 560, 0) : 0;
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: minHeight),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DrawerItem(
              onTap: () {
                if (activeItem != index) {
                  setState(() {
                    activeItem = index;
                  });
                }
              },
              model: CustomListTileModel.getDrawerItemsList()[index],
              isActive: activeItem == index,
            ),
          );
        },
      ),
    );
  }
}
