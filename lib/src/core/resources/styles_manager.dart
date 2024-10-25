// Flutter imports:
import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/size_config.dart';
import 'package:flutter/material.dart';

class StyleManager {
  const StyleManager._internal();
  static const StyleManager _instance = StyleManager._internal(); // singleton
  factory StyleManager() => _instance;

  static TextStyle _getTextStyle(
      double fontSize, FontWeight fontWeight, Color color, double? height,
      {double? letterSpacing}) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.defaultFontFamily,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

// regular style

  static TextStyle getRegularStyle(
      {double? fontSize, Color? color, double? height, double? letterSpacing}) {
    return _getTextStyle(
        letterSpacing: letterSpacing,
        fontSize ?? FontSize.s12,
        FontWeightManager.regular,
        color ?? ColorManager.black,
        height);
  }

// medium style

  static TextStyle getMediumStyle(
      {double? fontSize, Color? color, double? height, double? letterSpacing}) {
    return _getTextStyle(
        letterSpacing: letterSpacing,
        fontSize ?? FontSize.s12,
        FontWeightManager.medium,
        color ?? ColorManager.black,
        height);
  }

// light style

  static TextStyle getLightStyle(
      {double? fontSize, Color? color, double? height, double? letterSpacing}) {
    return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.light,
        color ?? ColorManager.black, height,
        letterSpacing: letterSpacing);
  }

// bold style

  static TextStyle getBoldStyle(
      {double? fontSize, Color? color, double? height}) {
    return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.bold,
        color ?? ColorManager.black, height);
  }

// semibold style

  static TextStyle getSemiBoldStyle(
      {double? fontSize, Color? color, double? height}) {
    return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.semiBold,
        color ?? ColorManager.black, height);
  }
}

// scaleFactor
// responsive font size
// (min , max) font size
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
