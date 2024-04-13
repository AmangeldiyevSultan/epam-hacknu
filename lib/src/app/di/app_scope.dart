import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppScope implements IAppScope {
  /// Create an instance [AppScope].
  AppScope(this._sharedPreferences);

  late final SharedPreferences _sharedPreferences;

  // static const _timeout = Duration(seconds: 30);

  // Dio _initDio(Iterable<Interceptor> additionalInterceptors) {
  //   final interceptedDio = Dio(
  //     BaseOptions(
  //       headers: {
  //         'Accept': 'application/json',
  //         'Content-Type': 'application/json',
  //       },
  //       connectTimeout: _timeout,
  //       receiveTimeout: _timeout,
  //       sendTimeout: _timeout,
  //     ),
  //   );

  //   interceptedDio.interceptors.addAll(additionalInterceptors);

  //   return interceptedDio;
  // }

  @override
  SharedPreferences get sharedPreferences => _sharedPreferences;

  @override
  late VoidCallback applicationRebuilder;

  @override
  Future<void> initServices() async {}
}

abstract class IAppScope {
  // Init repo to use it later
  Future<void> initServices();

  /// Shared preferences.
  SharedPreferences get sharedPreferences;

  /// Callback to rebuild the whole application.
  VoidCallback get applicationRebuilder;
}
