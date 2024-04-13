import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/core/router/custom_router.dart';
import 'package:flutter_epam_kazakh/src/app/widget/learning_page.dart';
import 'package:flutter_epam_kazakh/src/auth/login_widgets/login.dart';
import 'package:flutter_epam_kazakh/src/auth/registration_widgets/sign_up_body.dart';
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

@TypedGoRoute<SignUpRoute>(path: SignUpBody.routeName, name: 'signup')
class SignUpRoute extends GoRouteData {
  @override
  FadeTransitionPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) =>
      FadeTransitionPage<void>(
        key: state.pageKey,
        transitionDuration: const Duration(milliseconds: 1500),
        child: const SignUpBody(),
      );
}

@TypedGoRoute<LoginRoute>(path: LoginPage.routeName, name: 'login')
class LoginRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<LearningPageRoute>(
    path: LearningPage.routeName, name: 'learningpage')
class LearningPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LearningPage();
}

@TypedGoRoute<NavBarRoute>(path: NavBar.routeName, name: 'navbar')
class NavBarRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const NavBar();
}

class SplashScreenRoute extends GoRouteData {
  @override
  FadeTransitionPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) =>
      FadeTransitionPage<void>(
        key: state.pageKey,
        transitionDuration: const Duration(milliseconds: 200),
        child: const SignUpBody(),
      );
}
