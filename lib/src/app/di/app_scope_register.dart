import 'package:flutter_epam_kazakh/src/app/di/app_scope.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppScopeRegister {
  Future<AppScope> createScope() async {
    final sharedPreferences = await _createSharedPreferences();

    return AppScope(sharedPreferences);
  }

  Future<SharedPreferences> _createSharedPreferences() =>
      SharedPreferences.getInstance();
}
