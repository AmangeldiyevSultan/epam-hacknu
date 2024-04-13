import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/core/utils/logger.dart';
import 'package:flutter_epam_kazakh/src/app/di/app_scope_register.dart';
import 'package:flutter_epam_kazakh/src/app/widget/app.dart';

final class AppRunner {
  Future<void> initializeAndRun() async {
    final bindings = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();

    FlutterError.onError = logger.logFlutterError;
    PlatformDispatcher.instance.onError = logger.logPlatformDispatcherError;
    bindings.allowFirstFrame();

    final scopeRegister = AppScopeRegister();
    final scope = await scopeRegister.createScope();

    await scope.initServices();

    App(scope).attach();
  }
}
