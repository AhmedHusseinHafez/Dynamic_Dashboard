import 'package:espresso_dynamic_screen/src/app/gen_localization/l10n.dart';

class StringsManager {
  StringsManager._internal();
  static final StringsManager _instance =
      StringsManager._internal(); // singleton
  factory StringsManager() => _instance;

  static final getWord = MyLocalization.current;

  // static String noRoute = getWord.NoRouteFound;
  static String dashboard = "Dashboard";
  static String myTransaction = "My Transaction";
  static String statistics = "Statistics";
  static String myInvestments = "My Investments";
  static String walletAccount = "Wallet Account";
  static String settingSystem = "Setting system";
  static String logoutAccount = "Logout account";
}
