import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/listtile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.model,
  });

  final CustomListTileModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        model.image,
      ),
      title: Text(model.title),
      subtitle: model.subtitle != null ? Text(model.subtitle!) : null,
    );
  }
}
