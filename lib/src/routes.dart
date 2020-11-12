import 'package:flutter/material.dart';
import 'package:kinema/src/ui/screens/login_screen.dart';
import 'package:kinema/src/ui/screens/screens.dart';

class RouteGenerator {
  static const String mainScreen = '/';
  static const String loginScreen = '/login-screen';

  RouteGenerator._();

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const MainScreen(),
        );
      case loginScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const LoginScreen(),
        );
      default:
        throw FormatException('Page not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException({this.message});
}
