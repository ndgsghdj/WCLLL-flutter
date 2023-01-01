import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:admin_panel/models/DashboardButton.dart';

import '../../../constants/constants.dart';
import 'dashboard_button.dart';

class DashboardButtonList extends StatelessWidget {
  const DashboardButtonList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Looking for something?",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: DashboardButtonGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: DashboardButtonGridView(),
          desktop: DashboardButtonGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          )
        )
      ],
    );
  }
}

class DashboardButtonGridView extends StatelessWidget {
  const DashboardButtonGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: buttons.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => DashboardButton(info: buttons[index]),
    );
  }
}
