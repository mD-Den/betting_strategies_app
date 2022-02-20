import 'package:shared_preferences/shared_preferences.dart';

class LocalDataStore {
  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  static Future<SharedPreferences?> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  final String _kFavoriteList = "FAVORITE_LIST";

  List<int> getFavoriteList() =>
      _prefsInstance
          ?.getStringList(_kFavoriteList)
          ?.map((e) => int.parse(e))
          .toList() ??
      [];

  void setFavoriteList(List<int> value) => _prefsInstance?.setStringList(
      _kFavoriteList, value.map((e) => e.toString()).toList());
}
