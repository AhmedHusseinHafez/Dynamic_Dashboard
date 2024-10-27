import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';

class TransactionListTileModel {
  final String title;
  final String date;
  final String amount;

  TransactionListTileModel({
    required this.title,
    required this.date,
    required this.amount,
  });

  static List<TransactionListTileModel> getTransactions() {
    return [
      TransactionListTileModel(
        title: StringsManager.cashWithdrawal,
        date: "13 April 2022",
        amount: r"$20,129",
      ),
      TransactionListTileModel(
        title: StringsManager.landingPageproject,
        date: "13 Apr, 2022 at 3:30 PM",
        amount: r"$2,000",
      ),
      TransactionListTileModel(
        title: StringsManager.juniMobileAppproject,
        date: "13 Apr, 2022 at 3:30 PM",
        amount: r"$20,129",
      ),
    ];
  }
}
