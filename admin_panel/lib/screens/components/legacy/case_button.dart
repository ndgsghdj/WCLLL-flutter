import 'package:flutter/material.dart';
import 'package:admin_panel/models/case.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';

class Case extends StatelessWidget {
  const Case({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Cases",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text(
                    "Resident",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Progress",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
              rows: List.generate(
                demoCases.length,
                (index) => recentCasesRow(demoCases[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentCasesRow(CaseInstance caseInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              caseInfo.pfp!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                caseInfo.resident!,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      DataCell(Text(
        caseInfo.date!,
        style: TextStyle(color: Colors.white),
      )),
      DataCell(Text(
        caseInfo.progress!,
        style: TextStyle(color: Colors.white),
      ))
    ],
  );
}
