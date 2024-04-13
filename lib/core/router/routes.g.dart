// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $navBarRoute,
      $speakingRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      name: 'initial',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $navBarRoute => GoRouteData.$route(
      path: '/navbar',
      name: 'navbar',
      factory: $NavBarRouteExtension._fromState,
    );

extension $NavBarRouteExtension on NavBarRoute {
  static NavBarRoute _fromState(GoRouterState state) => NavBarRoute();

  String get location => GoRouteData.$location(
        '/navbar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $speakingRoute => GoRouteData.$route(
      path: '/map',
      name: 'speaking',
      factory: $SpeakingRouteExtension._fromState,
    );

extension $SpeakingRouteExtension on SpeakingRoute {
  static SpeakingRoute _fromState(GoRouterState state) => SpeakingRoute();

  String get location => GoRouteData.$location(
        '/map',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
