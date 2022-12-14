import 'package:flutter/material.dart';
import 'package:wclll/homePage.dart';
import 'package:wclll/loginPage.dart';
import 'package:wclll/profilePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  // ignore: override_on_non_overriding_member
  int currPage = 0;
  List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
    const LoginPage()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currPage],
        bottomNavigationBar: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 248, 173, 157),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home Page"),
            NavigationDestination(
                icon: Icon(Icons.person_sharp), label: "Profile"),
            NavigationDestination(icon: Icon(Icons.logout), label: "Log Out")
          ],
          onDestinationSelected: (int index) {
            setState(() {
              if (index == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const LoginPage();
                }));
              } else {
                currPage = index;
              }
            });
          },
          selectedIndex: currPage,
        ));
  }
}
