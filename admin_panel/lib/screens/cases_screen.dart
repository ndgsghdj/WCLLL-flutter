import 'package:flutter/material.dart';

import 'components/legacy/case_button.dart';

class CasesPage extends StatelessWidget {
  const CasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Case()
    );
  }
}