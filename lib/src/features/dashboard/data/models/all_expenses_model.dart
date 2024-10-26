import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';

class AllExpensesModel {
  final String title;
  final String image;
  final String date;
  final String price;

  AllExpensesModel(
      {required this.title,
      required this.image,
      required this.date,
      required this.price});

  static List<AllExpensesModel> allExpenses = [
    AllExpensesModel(
      title: StringsManager.balance,
      image: AssetsManager.svgBalance,
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesModel(
      title: StringsManager.income,
      image: AssetsManager.svgIncome,
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesModel(
      title: StringsManager.expenses,
      image: AssetsManager.svgExpenses,
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
}
