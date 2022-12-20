import 'package:flutter/material.dart';
import 'package:admin_panel/screens/login.dart';
import 'package:googleapis/forms/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
// Create a new Flutter project and add the `googleapis` package as a dependency
// in the `pubspec.yaml` file.
// Replace the placeholder values with your own credentials and configuration.
const String _SCOPES = 'https://www.googleapis.com/auth/forms';
const String _SERVICE_ACCOUNT_EMAIL = 'chee_wen_yong@s2021.ssts.edu.sg';
const String _PRIVATE_KEY_FILE_PATH = 'AIzaSyDgpilNQKDGdXK-4PB_ciUchI5dIhEtX7g';
const String _FORM_ID = '1FAIpQLSfhuSMT3IhIbwLFIieVcb6hhnMQR99vs0aLxL38K8OP1EgY-Q';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
