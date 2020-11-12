import 'package:flutter/material.dart';
import 'package:kinema/src/routes.dart';
import 'package:kinema/src/ui/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinema',
      theme: AppTheme,
      initialRoute: RouteGenerator.mainScreen,
      navigatorKey: RouteGenerator.key,
      onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateTitle: (context) => "Kinema",
    );
  }
}
