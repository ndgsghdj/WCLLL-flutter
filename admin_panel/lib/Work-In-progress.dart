import 'package:flutter/material.dart';
//provides google api for google forms
import 'package:googleapis/forms/v1.dart';
/// Provides the `GoogleSignIn` class
import 'package:google_sign_in/google_sign_in.dart';
// Google sign in auth
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';


void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Reports Page',
      home: Scaffold(
        appBar: AppBar(title: Text('New Reports Page'),),
        ),
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
    );
  }
}

final _googleSignIn = GoogleSignIn(
  scopes: <String>[FormsApi.formsBodyReadonlyScope],
);
Future<void> _handleSignIn() async {
  var httpClient = (await _googleSignIn.authenticatedClient())!;
  var FormApi = FormsApi(httpClient);
  try {
    await _googleSignIn.signIn();
  } catch (error) {
    print(error);
  }
}