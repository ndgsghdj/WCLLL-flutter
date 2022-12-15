import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Admin Panel'),
      ),
      body: Center(
        child: Text('Welcome to the admin panel'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Admin Panel'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Button 1'),
              onTap: () {
                // Handle button 1 tap
              },
            ),
            ListTile(
              title: Text('Button 2'),
              onTap: () {
                // Handle button 2 tap
              },
            ),
            ListTile(
              title: Text('Button 3'),
              onTap: () {
                // Handle button 3 tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
