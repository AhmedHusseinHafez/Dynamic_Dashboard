import 'package:espresso_dynamic_screen/src/core/resources/color_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/font_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

mixin AppTheme implements ThemeData {
  static ThemeData get kLightTheme => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,

        //! Scaffold Color
        scaffoldBackgroundColor: ColorManager.lightGray,

        primaryColor: ColorManager.primary,
        //       // primaryColorLight: ,
        //       // primaryColorDark: ,
        //       // disabledColor: ColorManager.whiteWithOpacity30,
        //       // splashColor: ,  //ripple effect

        //       //!Divider
        //       dividerTheme: DividerThemeData(
        //         color: ColorManager.charcoal,
        //         indent: 6.w,
        //         endIndent: 6.w,
        //         thickness: 2,
        //       ),

        //       //!App bar
        //       appBarTheme: AppBarTheme(
        //         systemOverlayStyle: Platform.isIOS
        //             ? null
        //             : const SystemUiOverlayStyle(
        //                 statusBarColor: ColorManager.transparent,
        //                 statusBarIconBrightness: Brightness.light,
        //                 systemNavigationBarColor: ColorManager.richBlack,
        //               ),
        //         centerTitle: true,
        //         foregroundColor: ColorManager.white,
        //         elevation: 0.0,
        //         backgroundColor: Colors.transparent,
        //         titleTextStyle: _myTextTheme().titleLarge,
        //       ),

        //       //! Page Transition
        //       pageTransitionsTheme: const PageTransitionsTheme(
        //         builders: {
        //           TargetPlatform.android: ZoomPageTransitionsBuilder(),
        //           TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        //         },
        //       ),

        //       //! Action Icon
        //       actionIconTheme: ActionIconThemeData(
        //         backButtonIconBuilder: (context) {
        //           return const Icon(
        //             size: 30,
        //             Icons.arrow_back_rounded,
        //           );
        //         },
        //       ),

        //       // //!ElevatedButtonTheme
        //       elevatedButtonTheme: ElevatedButtonThemeData(
        //         style: ElevatedButton.styleFrom(
        //           fixedSize: Size(327.w, 46.h),
        //           shape: const StadiumBorder(),
        //           backgroundColor: ColorManager.secondary,
        //           foregroundColor: ColorManager.white,
        //           textStyle: StyleManager.getMediumStyle(fontSize: FontSize.s12),
        //           surfaceTintColor: ColorManager.primary,
        //         ),
        //       ),

        fontFamily: FontConstants.defaultFontFamily,

        //!TextTheme
        textTheme: _myTextTheme(),

        //       textSelectionTheme: const TextSelectionThemeData(
        //         cursorColor: ColorManager.secondary,
        //         selectionColor: ColorManager.secondary,
        //         selectionHandleColor: ColorManager.secondary,
        //       ),

        //       //! TFF Theme
        //       inputDecorationTheme: InputDecorationTheme(
        //         contentPadding: EdgeInsets.symmetric(
        //           horizontal: AppPadding.p16.w,
        //           vertical: AppPadding.p16.h,
        //         ),

        //         filled: true,
        //         fillColor: ColorManager.jetBlack,

        //         hintStyle: _getTFFFontStyle(),
        //         labelStyle: _getTFFFontStyle(),
        //         errorStyle: _getTFFFontStyle(error: true),
        //         //enabledBorder the border before click on field
        //         enabledBorder: _getTFFBorderStyle(),
        //         //focusedBorder the border after click on field
        //         focusedBorder: _getTFFBorderStyle(color: ColorManager.secondary),
        //         errorBorder: _getTFFBorderStyle(color: ColorManager.brightRed),
        //         focusedErrorBorder: _getTFFBorderStyle(),
        //         // disabledBorder: _getTFFBorderStyle(),
        //         border: _getTFFBorderStyle(),
        //         // iconColor: ColorManager.secondary,
        //         // suffixIconColor: ColorManager.secondary,
        //       ),

        //       textButtonTheme: TextButtonThemeData(
        //         style: ButtonStyle(
        //           backgroundColor:
        //               const MaterialStatePropertyAll<Color>(ColorManager.transparent),
        //           foregroundColor:
        //               const MaterialStatePropertyAll<Color>(ColorManager.secondary),
        //           textStyle: MaterialStatePropertyAll<TextStyle>(
        //             StyleManager.getRegularStyle(fontSize: FontSize.s14),
        //           ),
        //         ),
        //       ),

        //       iconButtonTheme: IconButtonThemeData(
        //         style: ButtonStyle(
        //           backgroundColor:
        //               const MaterialStatePropertyAll<Color>(ColorManager.transparent),
        //           iconColor:
        //               const MaterialStatePropertyAll<Color>(ColorManager.white),
        //           iconSize: MaterialStatePropertyAll<double>(8.w),
        //         ),
        //       ),

        //       listTileTheme: ListTileThemeData(
        //         tileColor: ColorManager.jetBlack,
        //         // textColor: ColorManager.white,
        //         contentPadding: EdgeInsets.symmetric(
        //           vertical: 4.5.h,
        //           horizontal: 9.w,
        //         ),
        //         visualDensity:
        //             const VisualDensity(vertical: VisualDensity.maximumDensity),
        //         // VisualDensity.comfortable,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(10.r),
        //         ),
        //         titleTextStyle: StyleManager.getLightStyle(
        //           fontSize: FontSize.s13,
        //           color: ColorManager.white,
        //         ),
        //         subtitleTextStyle: StyleManager.getLightStyle(
        //           fontSize: FontSize.s10,
        //           color: ColorManager.dimGray,
        //         ),
        //         horizontalTitleGap: 21.w,
        //       ),

        //       //! search bar
        //       searchBarTheme: SearchBarThemeData(
        //         backgroundColor: MaterialStateProperty.all(
        //           ColorManager.jetBlack,
        //         ),
        //         elevation: const MaterialStatePropertyAll(0),
        //         shape: MaterialStatePropertyAll(
        //           RoundedRectangleBorder(
        //             side: const BorderSide(color: ColorManager.deepCharcoal),
        //             borderRadius: BorderRadius.circular(100.r),
        //           ),
        //         ),
        //         textStyle: MaterialStatePropertyAll(
        //           _myTextTheme().titleSmall,
        //         ),
        //         hintStyle: MaterialStatePropertyAll(
        //           StyleManager.getLightStyle(
        //             color: ColorManager.whiteWithOpacity30,
        //             fontSize: FontSize.s13,
        //           ),
        //         ),
        //       ),

        //       //! Bottom Nav Bar Theme
        //       bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //         selectedLabelStyle:
        //             StyleManager.getRegularStyle(fontSize: FontSize.s12),
        //         unselectedLabelStyle:
        //             StyleManager.getRegularStyle(fontSize: FontSize.s12),
        //         backgroundColor: ColorManager.richBlack,
        //         showSelectedLabels: true,
        //         showUnselectedLabels: true,
        //         selectedItemColor: ColorManager.secondary,
        //         unselectedItemColor: ColorManager.charcoalGray,
        //         type: BottomNavigationBarType.fixed,
        //         elevation: 0,
        //       ),

        //       //! Checkbox Theme
        //       checkboxTheme: CheckboxThemeData(
        //         side: const BorderSide(width: 1),
        //         fillColor: const MaterialStatePropertyAll(ColorManager.secondary),
        //         checkColor: const MaterialStatePropertyAll(ColorManager.white),
        //         shape:
        //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
        //       ),

        //       //       radioTheme: const RadioThemeData(
        //       //         fillColor: MaterialStatePropertyAll<Color?>(Colors.black),
        //       //       ),
        //       ///       //! Switch Theme
        //       //       switchTheme: SwitchThemeData(
        //       //         thumbColor: MaterialStateProperty.all(ColorManager.white),
        //       //         trackColor: MaterialStateProperty.all(Colors.green),
        //       //       ),

        //       //       ///! Bottom Sheet Theme
        //       //       bottomSheetTheme: BottomSheetThemeData(
        //       //         backgroundColor: ColorManager.white,
        //       //         // dragHandleSize: Size(100.w, 3.h),
        //       //         // dragHandleColor: ColorManager.lightGrey,
        //       //         shape: RoundedRectangleBorder(
        //       //           borderRadius: BorderRadius.only(
        //       //             topLeft: Radius.circular(30.r),
        //       //             topRight: Radius.circular(30.r),
        //       //           ),
        //       //         ),
        //       //       ),
        //       //drawerTheme:
        //     );

        // static TextStyle _getTFFFontStyle({bool? error}) {
        //   return error ?? false
        //       ? StyleManager.getRegularStyle(
        //           color: ColorManager.brightRed,
        //           fontSize: FontSize.s13,
        //         )
        //       : StyleManager.getRegularStyle(
        //           color: ColorManager.whiteWithOpacity30,
        //           fontSize: FontSize.s13,
        //         );
        // }

        // static InputBorder _getTFFBorderStyle({Color? color}) {
        //   return OutlineInputBorder(
        //     borderSide: BorderSide(
        //       color: color ?? ColorManager.deepCharcoal,
        //       width: 1.w,
        //     ),
        //     borderRadius: BorderRadius.circular(
        //       100.r,
        //     ),
        //   );
        // }
      );
  static TextTheme _myTextTheme() {
    return TextTheme(
      //!Label
      labelLarge: StyleManager.getBoldStyle(fontSize: FontSize.s20),
      labelMedium: StyleManager.getMediumStyle(fontSize: FontSize.s16),
      labelSmall: StyleManager.getRegularStyle(fontSize: FontSize.s12),

      //!Body
      bodyLarge: StyleManager.getRegularStyle(fontSize: FontSize.s16),
      bodyMedium: StyleManager.getRegularStyle(fontSize: FontSize.s14),
      bodySmall: StyleManager.getRegularStyle(fontSize: FontSize.s12),

      //! Display
      displayLarge: StyleManager.getLightStyle(
        fontSize: FontSize.s57,
        letterSpacing: -1.5,
      ),
      displayMedium: StyleManager.getRegularStyle(
        fontSize: FontSize.s45,
        letterSpacing: -0.5,
      ),
      displaySmall: StyleManager.getRegularStyle(fontSize: FontSize.s36),

      //!Title
      titleLarge: StyleManager.getRegularStyle(
        fontSize: FontSize.s22,
        letterSpacing: -0.5,
      ),
      titleMedium: StyleManager.getMediumStyle(
        fontSize: FontSize.s16,
        letterSpacing: 0.15,
      ),
      titleSmall: StyleManager.getMediumStyle(
        fontSize: FontSize.s14,
        letterSpacing: 0.1,
      ),

      //!Headline
      headlineLarge: StyleManager.getRegularStyle(
        fontSize: FontSize.s60,
        letterSpacing: -2.0,
      ),
      headlineMedium: StyleManager.getRegularStyle(
        fontSize: FontSize.s48,
        letterSpacing: -0.5,
      ),
      headlineSmall: StyleManager.getRegularStyle(fontSize: FontSize.s36),
    );
  }
}
