import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:podcast/router/router.dart';
import 'package:podcast/router/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();
  final List<NavigatorObserver> observers = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    services.SystemChrome.setSystemUIOverlayStyle(
      const services.SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );

    services.SystemChrome.setEnabledSystemUIMode(
      services.SystemUiMode.edgeToEdge,
      overlays: [services.SystemUiOverlay.top],
    );
    return MaterialApp(
      navigatorKey: navigatorKey,
      navigatorObservers: [
        ...observers,
        NavigationHistoryObserver(),
      ],
      initialRoute: AppRoutes.login,
      builder: (context, child) {
        return child!;
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      routes: appRoutes,
    );
  }
}
