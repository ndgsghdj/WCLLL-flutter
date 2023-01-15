  import 'package:admin_panel/constants/constants.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/flutter_svg.dart';
  import 'package:go_router/go_router.dart';

  class Sidebar extends StatelessWidget {
    const Sidebar({super.key});

    @override
    Widget build(BuildContext context) {
      return Drawer(
        backgroundColor: secondaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerListTile(
              initialLocation: '/',
              title: 'Dashboard',
              svgSrc: "icons/menu_dashbord.svg",
              press: () {
                context.go('/');
              },
            ),
            DrawerListTile(
              initialLocation: '/reports',
              title: 'Reports',
              svgSrc: "icons/menu_doc.svg",
              press: () {
                context.go('/reports');
              },
            ),
            DrawerListTile(
              initialLocation: '/cases',
              title: 'Cases',
              svgSrc: "icons/menu_tran.svg",
              press: () {
                context.go('/cases');
              },
            ),
            DrawerListTile(
              initialLocation: '/accounts',
              title: 'Accounts',
              svgSrc: "icons/menu_profile.svg",
              press: () {
                context.go('/accounts');
              },
            ),
          ],
        ),
      );
    }
  }

  class DrawerListTile extends StatelessWidget {
    const DrawerListTile({
      Key? key,
      required this.title,
      required this.svgSrc,
      required this.initialLocation,
      required this.press,
    }) : super(key: key);

    final String title, svgSrc, initialLocation;
    final VoidCallback press;

    @override
    Widget build(BuildContext context) {
      return ListTile(
        horizontalTitleGap: 0.0,
        selectedColor: primaryColor,
        onTap: press,
        leading: SvgPicture.asset(
          svgSrc,
          color: Colors.white54,
          height: 16,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white54),
        ),
      );
    }
  }
