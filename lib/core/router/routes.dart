import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/src/navbar/screen/navbar.dart';
import 'package:flutter_epam_kazakh/src/splash/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

/// Home route that user will see when they are logged in.
@TypedGoRoute<SplashRoute>(path: SplashScreen.routeName, name: 'initial')
class SplashRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

@TypedGoRoute<NavBarRoute>(path: NavBar.routeName, name: 'navbar')
class NavBarRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const NavBar();
}
