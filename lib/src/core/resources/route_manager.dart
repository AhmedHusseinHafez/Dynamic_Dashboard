import 'package:espresso_dynamic_screen/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:flutter/material.dart';

class Routes {
  // if you change this to "/dashboard" flutter will but default route in stack first then navigate to dashboard screen
  static const String dashboardScreen = '/';
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
