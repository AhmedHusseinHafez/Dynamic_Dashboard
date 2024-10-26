import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/listtile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.model,
    this.onTap,
    required this.isActive,
  });

  final CustomListTileModel model;
  final void Function()? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(model.image),
      shape: const RoundedRectangleBorder(),
      title: Text(model.title),
      tileColor: ColorManager.white,
      titleTextStyle: isActive
          ? StyleManager.getBoldStyle(
              fontSize: FontSize.s16,
              color: ColorManager.primary,
            )
          : StyleManager.getRegularStyle(
              fontSize: FontSize.s16,
            ),
      trailing: isActive
          ? Container(
              color: ColorManager.primary,
              width: 3.27,
            )
          : null,
    );
  }
}
