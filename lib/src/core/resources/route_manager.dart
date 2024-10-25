import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String dashboardScreen = '/dashboardScreen';
}

class RouteGenerator {
  // static late OtpTimerCubit otpTimerCubit;

  RouteGenerator() {
    // otpTimerCubit = getIt<OtpTimerCubit>();
  }

  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.dashboardScreen:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );

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
