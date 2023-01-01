import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset("images/logo.png"),
          ),
          DrawerListTile(
            title: 'Dashboard',
            svgSrc: "icons/menu_dashbord.svg",
            press: () {
              context.push('/');
            },
          ),
          DrawerListTile(
            title: 'Reports',
            svgSrc: "icons/menu_doc.svg",
            press: () {
              context.push('/reports');
            },
          ),
          DrawerListTile(
            title: 'Cases',
            svgSrc: "icons/menu_tran.svg",
            press: () {
              // Handle button 2 tap
            },
          ),
          DrawerListTile(
            title: 'Accounts',
            svgSrc: "icons/menu_profile.svg",
            press: () {
              // Handle button 3 tap
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
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
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
