import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.title,
  });

  final String title;

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
          padding: const EdgeInsetsDirectional.only(end: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Flexible(
                child: SizedBox(height: 30),
              ),
              _cardListTile(context),
              const Spacer(),
              Text(
                "0918 8124 0042 8129",
                style: StyleManager.getRegularStyle(
                  context,
                  fontSize: FontSize.s24,
                  color: ColorManager.white,
                ),
              ),
              // const SizedBox(height: 12),
              Text(
                "12/20 - 124",
                style: StyleManager.getLightStyle(
                  context,
                  fontSize: FontSize.s16,
                  color: ColorManager.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardListTile(BuildContext context) {
    return ListTile(
      // contentPadding: EdgeInsets.zero,
      titleTextStyle: StyleManager.getLightStyle(
        context,
        fontSize: FontSize.s16,
        color: ColorManager.white,
      ),
      subtitleTextStyle: StyleManager.getRegularStyle(
        context,
        fontSize: FontSize.s20,
        color: ColorManager.white,
      ),
      title: Text(title),
      subtitle: const Text("Syah Bandi"),
      trailing: SvgPicture.asset(AssetsManager.svgGallery),
    );
  }
}
