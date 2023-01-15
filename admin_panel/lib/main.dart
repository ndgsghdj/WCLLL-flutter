import 'package:admin_panel/routes/router.dart';
import 'package:admin_panel/screens/accounts_screen.dart';
import 'package:admin_panel/screens/cases_screen.dart';
import 'package:admin_panel/screens/dashboard_screen.dart';
import 'package:admin_panel/screens/home-provider.dart';
import 'package:admin_panel/screens/home.dart';
import 'package:admin_panel/screens/reports_screen.dart';
import 'package:flutter/material.dart';
import 'package:admin_panel/screens/login.dart';
import 'package:go_router/go_router.dart';
// import 'package:googleapis/forms/v1.dart';
// import 'package:googleapis_auth/auth_io.dart';
// Create a new Flutter project and add the `googleapis` package as a dependency
// in the `pubspec.yaml` file.
// Replace the placeholder values with your own credentials and configuration.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
      theme: ThemeData(
        textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
      ),
    );
  }
}
