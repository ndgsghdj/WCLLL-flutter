import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:wclll/homePage.dart';
import 'package:wclll/mainActivity.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: prefer_typing_uninitialized_variables
  String errorMsg = "";
  // ignore: prefer_typing_uninitialized_variables
  var userName;
  // ignore: prefer_typing_uninitialized_variables
  var password;

  void _updateUser(val) {
    setState(() {
      userName = val;
    });
  }

  void _updatePass(val) {
    // ignore: unused_element
    setState(() {
      password = val;
    });
  }

  var accounts = {"Tom": "123", "Jerry": "abc"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 173, 157),
        automaticallyImplyLeading: false,
        title: const Text("LOGIN"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.all(70.0)),
          Row(children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
            ),
            Container(
                width: 360,
                height: 320,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 244, 151, 142),
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Container(
                    //margin: const EdgeInsets.all(10.0),
                    //padding: const EdgeInsets.all(10.0),
                    width: 310,
                    child: const Text(
                      "Username: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(3.0)),
                  Container(
                    //margin: const EdgeInsets.all(10.0),
                    //padding: const EdgeInsets.all(10.0),
                    width: 310,
                    child: TextFormField(
                      onChanged: (val) {
                        _updateUser(val);
                      },
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 251, 196, 171),
                          border: InputBorder.none),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Container(
                      //  margin: const EdgeInsets.all(10.0),
                      //  padding: const EdgeInsets.all(10.0),
                      alignment: Alignment.centerLeft,
                      width: 310,
                      child: const Text("Password: ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                  const Padding(padding: EdgeInsets.all(3.0)),
                  Container(
                    //margin: const EdgeInsets.all(10.0),
                    //padding: const EdgeInsets.all(10.0),
                    width: 310,
                    child: TextFormField(
                      onChanged: (val) {
                        _updatePass(val);
                      },
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 251, 196, 171),
                          border: InputBorder.none),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Click here",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  )
                ])),
          ]),
          Expanded(
            flex: 3,
            child: const Padding(padding: EdgeInsets.all(50.0)),
          ),
          Expanded(
            child: Container(
              width: 330.0,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 248, 173, 157)),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  if (accounts.containsKey(userName)) {
                    if (accounts[userName] == password) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const MainPage();
                      }));
                    } else {
                      setState(() {
                        errorMsg = "Password is incorrect";
                      });
                    }
                  } else {
                    setState(() {
                      errorMsg = "User does not exist";
                    });
                  }
                },
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: const Padding(padding: EdgeInsets.all(50.0)),
          ),
          Expanded(
            child: Text(
              errorMsg,
              style: const TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
