import 'package:flutter/cupertino.dart';
import 'package:flutter_epam_kazakh/src/auth/registration_widgets/sign_up_body.dart';
import 'package:flutter_epam_kazakh/src/splash/screen/splash_screen.dart';

class FadeTransitionPage<T> extends Page<T> {
  const FadeTransitionPage({
    required this.child,
    this.transitionDuration,
    super.key,
  });
  final Widget child;
  final Duration? transitionDuration;

  @override
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      transitionDuration:
          transitionDuration ?? const Duration(milliseconds: 300),
    );
  }
}

class CupertinoTransitionPage<T> extends Page<T> {
  const CupertinoTransitionPage({
    required this.child,
    this.transitionDuration,
    super.key,
  });
  final Widget child;
  final Duration? transitionDuration;

  @override
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) =>child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return CupertinoPageTransition(
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: secondaryAnimation,
          linearTransition: false,
          child: child,
        );
      },
      transitionDuration:
          transitionDuration ?? const Duration(milliseconds: 300),
    );
  }
}
