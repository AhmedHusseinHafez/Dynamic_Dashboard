import 'package:espresso_dynamic_screen/src/core/resources/assets_manager.dart';
import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';

class CustomListTileModel {
  final String title;
  final String? subtitle;
  final String image;

  CustomListTileModel({
    required this.title,
    this.subtitle,
    required this.image,
  });

  static List<CustomListTileModel> getDrawerItemsList() {
    return <CustomListTileModel>[
      CustomListTileModel(
        title: StringsManager.dashboard,
        image: AssetsManager.svgDashboard,
      ),
      CustomListTileModel(
        title: StringsManager.myTransaction,
        image: AssetsManager.svgMyTransitions,
      ),
      CustomListTileModel(
        title: StringsManager.statistics,
        image: AssetsManager.svgStatistics,
      ),
      CustomListTileModel(
        title: StringsManager.walletAccount,
        image: AssetsManager.svgWalletAccount,
      ),
      CustomListTileModel(
        title: StringsManager.myInvestments,
        image: AssetsManager.svgMyInvestments,
      ),
      CustomListTileModel(
        title: StringsManager.settingSystem,
        image: AssetsManager.svgSettings,
      ),
      CustomListTileModel(
        title: StringsManager.logoutAccount,
        image: AssetsManager.svgLogout,
      ),
    ];
  }
}
