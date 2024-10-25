import 'package:device_preview/device_preview.dart';
import 'package:espresso_dynamic_screen/src/app/gen_localization/l10n.dart';
import 'package:espresso_dynamic_screen/src/core/resources/constants.dart';
import 'package:espresso_dynamic_screen/src/core/resources/route_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal(); // singleton
  factory MyApp() => _instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RouteGenerator routeGenerator = RouteGenerator();
  @override
  Widget build(BuildContext context) {
    return _buildMaterialApp(routeGenerator);
  }
}

Widget _buildMaterialApp(RouteGenerator routeGenerator) {
  return MaterialApp(
    title: AppConstants.appName,
    builder: DevicePreview.appBuilder,
    navigatorKey: navigatorKey,
    locale: const Locale('en', 'US'),
    localizationsDelegates: const [
      MyLocalization.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: MyLocalization.delegate.supportedLocales,
    debugShowCheckedModeBanner: false,
    theme: AppTheme.kLightTheme,
    onGenerateRoute: routeGenerator.getRoute,
    initialRoute: Routes.dashboardScreen,
  );
  // return ScreenUtilInit(
  //   designSize: const Size(375, 812),
  //   minTextAdapt: true,
  //   splitScreenMode: true,
  //   useInheritedMediaQuery: true,
  //   builder: (context, state) {
  //     // if (kDebugMode) {
  //     //   //This indicates that more memory was used during the image decoding process than necessary.
  //     //   debugInvertOversizedImages = true;
  //     // }

  //     return MaterialApp(
  //       title: AppConstants.appName,
  //       navigatorKey: navigatorKey,
  //       locale: const Locale('en', 'US'),
  //       localizationsDelegates: const [
  //         // MyLocalization.delegate,
  //         GlobalMaterialLocalizations.delegate,
  //         GlobalWidgetsLocalizations.delegate,
  //         GlobalCupertinoLocalizations.delegate,
  //       ],
  //       // supportedLocales: MyLocalization.delegate.supportedLocales,
  //       debugShowCheckedModeBanner: false,
  //       theme: AppTheme.kLightTheme,
  //       onGenerateRoute: routeGenerator.getRoute,
  //       // initialRoute: Routes.splashScreen,
  //     );
  //   },
  // );
}
