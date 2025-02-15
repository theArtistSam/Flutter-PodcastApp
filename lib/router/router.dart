import 'package:flutter/material.dart';
import 'package:podcast/router/routes.dart';
import 'package:podcast/screens/author/author.dart';
import 'package:podcast/screens/browse/browse.dart';
import 'package:podcast/screens/home/home.dart';
import 'package:podcast/screens/login/login.dart';
import 'package:podcast/screens/podcast/podcast.dart';
import 'package:podcast/screens/topic/topic.dart';

final Map<String, Widget Function(dynamic)> appRoutes = {
  AppRoutes.login: (_) => const LoginScreen(),
  AppRoutes.home: (_) => const HomeScreen(),
  AppRoutes.podcast: (_) => const PodcastScreen(),
  AppRoutes.browse: (_) => const BrowseScreen(),
  AppRoutes.topic: (_) => const TopicScreen(),
  AppRoutes.author: (_) => const AuthorScreen(),
};

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.login:
      return FadeRoute(
        settings: settings,
        child: const LoginScreen(),
      );
    case AppRoutes.home:
      return FadeRoute(
        settings: settings,
        child: const HomeScreen(),
      );
    case AppRoutes.podcast:
      return FadeRoute(
        settings: settings,
        child: const PodcastScreen(),
      );
    case AppRoutes.browse:
      return FadeRoute(
        settings: settings,
        child: const BrowseScreen(),
      );
    case AppRoutes.topic:
      return FadeRoute(
        settings: settings,
        child: const TopicScreen(),
      );
    case AppRoutes.author:
      return FadeRoute(
        settings: settings,
        child: const AuthorScreen(),
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
