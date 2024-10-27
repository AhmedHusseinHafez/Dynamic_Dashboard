import 'package:espresso_dynamic_screen/src/features/dashboard/data/models/listtile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.model,
    this.borderRadius,
  });

  final CustomListTileModel model;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    // i use card because tileColor visible in drawer and not visible in QuickInvoice
    // for reason i don't no it, the card solve this issue
    return Card(
      elevation: 0,
      child: Center(
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 12)),
          ),
          leading: SvgPicture.asset(
            model.image,
          ),
          title: Text(model.title),
          subtitle: model.subtitle != null ? Text(model.subtitle!) : null,
        ),
      ),
    );
  }
}
