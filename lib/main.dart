import 'package:flutter/material.dart';
import 'package:kinema/getit.dart';
import 'package:kinema/logging.dart';
import 'package:kinema/src/core/services/movie_service.dart';
import 'package:kinema/src/routes.dart';
import 'package:kinema/src/ui/themes/themes.dart';
import 'package:provider/provider.dart';

void main() {
  setupLogging();
  locator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => MovieService.create(),
          dispose: (_, MovieService service) => service.client.dispose(),
        )
      ],
      child: MaterialApp(
        title: 'Kinema',
        theme: AppTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: RouteGenerator.mainScreen,
        navigatorKey: RouteGenerator.key,
        onGenerateRoute: RouteGenerator.generateRoute,
        onGenerateTitle: (context) => "Kinema",
      ),
    );
  }
}
