import 'package:flutter/material.dart';
import 'package:admin_panel/responsive.dart';
import '../../constants.dart';
import 'components/header.dart';
import 'package:admin_panel/screens/components/dashboard_button_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      DashboardButtonList(),
                      SizedBox(height: defaultPadding),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
