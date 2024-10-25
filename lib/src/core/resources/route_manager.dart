import 'package:flutter/material.dart';

class Routes {
  // static const String splashScreen = '/splashScreen';
  static const String noRoue = '/noRoue';
}

class RouteGenerator {
  // static late OtpTimerCubit otpTimerCubit;

  RouteGenerator() {
    // otpTimerCubit = getIt<OtpTimerCubit>();
  }

  // static List<Widget> navBarPages = [
  //   const HomeScreen(),
  //   const CartScreen(),
  //   const OrdersScreen(),
  //   const ProfileScreen(),
  // ];

  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.splashScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const SplashScreen(),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}
