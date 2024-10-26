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

  static String allExpenses = "All Expenses";
  static String monthly = "Monthly";

  static String balance = "Balance";

  static String income = "Income";

  static String expenses = "Expenses";

  static String uSD = "USD";
  static String typeCustomerEmail = "Type customer email";
  static String typeCustomerName = "Type customer name";

  static String quickInvoice = "Quick Invoice";
  static String latestTransaction = "Latest Transaction";
  static String customerName = "Customer name";

  static String customerEmail = "Customer Email";
  static String itemName = "Item name";
  static String itemMount = "Item mount";

  static String addMoreDetails = "Add more details";
  static String sendMoney = "Send Money";
}
