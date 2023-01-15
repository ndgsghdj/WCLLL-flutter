import 'package:admin_panel/constants/constants.dart';
import 'package:admin_panel/responsive.dart';
import 'package:admin_panel/screens/dashboard_screen.dart';
import 'package:admin_panel/screens/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'reports_screen.dart';
import 'cases_screen.dart';
import 'accounts_screen.dart';

import 'components/side_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: Sidebar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: Sidebar(),
              ),
            Expanded(
              flex: 5,
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
