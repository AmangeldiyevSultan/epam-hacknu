import 'package:flutter/cupertino.dart';

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
