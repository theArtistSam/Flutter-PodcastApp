import 'package:flutter/material.dart';
import 'package:podcast/router/routes.dart';
import 'package:podcast/screens/onboarding/onboarding.dart';

final Map<String, Widget Function(dynamic)> appRoutes = {
  AppRoutes.onboarding: (_) => const OnboardingScreen(),
};

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.onboarding:
      return FadeRoute(
        settings: settings,
        child: const OnboardingScreen(),
      );

    default:
      return null;
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;

  @override
  final RouteSettings settings;

  FadeRoute({required this.child, required this.settings})
      : super(
          settings: settings,
          pageBuilder: (context, ani1, ani2) => child,
          transitionsBuilder: (context, ani1, ani2, child) {
            return FadeTransition(
              opacity: ani1,
              child: child,
            );
          },
        );
}
