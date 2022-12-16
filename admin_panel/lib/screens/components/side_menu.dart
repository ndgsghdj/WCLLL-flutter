import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Admin Panel'),
          ),
          DrawerListTile(
            title: 'Reports',
            svgSrc: "assets/icons/Document.svg",
            press: () {
              // Handle button 1 tap
            },
          ),
          DrawerListTile(
            title: 'Cases',
            svgSrc: "assets/icons/folder.svg",
            press: () {
              // Handle button 2 tap
            },
          ),
          DrawerListTile(
            title: 'Accounts',
            svgSrc: "assets/icons/menu_profile.svg",
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
