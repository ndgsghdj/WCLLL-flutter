import 'package:admin_panel/routes/route_constants.dart';
import 'package:admin_panel/screens/home.dart';
import 'package:admin_panel/screens/login.dart';
import 'package:admin_panel/screens/reports_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.home,
        path: '/',
        builder: (context, state) => HomePage(),
        redirect: (context, state) {
          bool isAuthenticated = true;
          if (!isAuthenticated && state.subloc == '/') {
            return '/login';
          }
          return null;
        },
      ),
      GoRoute(
        name: RouteConstants.login,
        path: '/login',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.reports,
        path: '/reports',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: ReportsPage(),
          );
        },
      ),
    ],
  );
}
