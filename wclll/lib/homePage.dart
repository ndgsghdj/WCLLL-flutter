import 'package:flutter/material.dart';
import 'package:wclll/loginPage.dart';
// ignore: unused_import

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.username});
  String username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // ignore: override_on_non_overriding_member
  var userName = const LoginPage();
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              alignment: Alignment.topCenter,
              height: 350,
              width: 1000,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 128, 128),
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(50)),
                  Image.asset("images/icon.png"),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  const Text(
                    "Welcome,",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    widget.username,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: TextButton(
                  onPressed: () {
                    debugPrint("Case 1");
                  },
                  child: Image.asset("images/accounts_button.png"),
                ),
              ),
              //const Padding(padding: EdgeInsets.all(20.0)),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: TextButton(
                  onPressed: () {
                    debugPrint("Case 2");
                  },
                  child: Image.asset("images/reports_button.png"),
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          TextButton(
            onPressed: () {
              debugPrint("Case 3");
            },
            child: Image.asset("images/pending_cases_button.png"),
          ),
        ],
      ),
    );
  }
}
