import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'House Visits Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('House Visits'),
        ),
        // Add the form widget here.
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Add form fields and buttons here.
        ],
      ),
    );
  }
}

