import 'package:espresso_dynamic_screen/src/app/gen_localization/l10n.dart';

class StringsManager {
  StringsManager._internal();
  static final StringsManager _instance =
      StringsManager._internal(); // singleton
  factory StringsManager() => _instance;

  static final getWord = MyLocalization.current;

  // static String noRoute = getWord.NoRouteFound;
}
