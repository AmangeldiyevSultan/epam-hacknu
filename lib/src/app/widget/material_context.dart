import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/core/common/provider/di_scope.dart';
import 'package:flutter_epam_kazakh/core/router/routes.dart';
import 'package:flutter_epam_kazakh/src/app/di/app_scope.dart';
import 'package:flutter_epam_kazakh/src/app/widget/learning_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MaterialContext extends StatefulWidget {
  const MaterialContext(
    this.appScope, {
    super.key,
  });

  /// Scope of dependencies which need through all app's life.
  final AppScope appScope;

  @override
  State<MaterialContext> createState() => _MaterialContextState();
}

class _MaterialContextState extends State<MaterialContext> {
  late IAppScope _scope;

  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = _initializeRouter();
    _scope = widget.appScope..applicationRebuilder = _rebuildApplication;
  }

  GoRouter _initializeRouter() {
    return GoRouter(
      debugLogDiagnostics: true,
      routes: $appRoutes,
      redirect: (context, state) {
        if (state.matchedLocation == '/') {
          return LearningPage.routeName;
        }
        return null;
      },
    );
  }

  void _rebuildApplication() {
    setState(() {
      _scope = widget.appScope..applicationRebuilder = _rebuildApplication;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 805),
      child: DiScope<IAppScope>(
        key: ObjectKey(_scope),
        factory: () {
          return _scope;
        },
        child: MaterialApp.router(
          routerConfig: _router,

          /// Localization.
          // localizationsDelegates: _localizationsDelegates,
          // supportedLocales: _localizations,
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.noScaling,
              ),
              child: widget!,
            );
          },
        ),
      ),
    );
  }
}

// const _localizations = [
//   Locale('en'),
//   Locale('ru'),
// ];

// const _localizationsDelegates = [
//   GlobalMaterialLocalizations.delegate,
//   GlobalWidgetsLocalizations.delegate,
//   GlobalCupertinoLocalizations.delegate,
// ];
