import 'package:admin_panel/routes/route_constants.dart';
import 'package:admin_panel/screens/components/side_menu.dart';
import 'package:admin_panel/screens/dashboard_screen.dart';
import 'package:admin_panel/screens/home.dart';
import 'package:admin_panel/screens/login.dart';
import 'package:admin_panel/screens/reports_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/accounts_screen.dart';
import '../screens/cases_screen.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/',
    navigatorKey: _rootNavigator,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (context, state, child) {
          return HomePage(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: DashboardScreen(),
            ),
          ),
          GoRoute(
            path: '/reports',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: ReportsPage(),
            ),
          ),
          GoRoute(
            path: '/cases',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: CasesPage(),
            ),
          ),
          GoRoute(
            path: '/accounts',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: AccountsPage(),
            ),
          ),
        ],
      ),
    ],
  );
}
