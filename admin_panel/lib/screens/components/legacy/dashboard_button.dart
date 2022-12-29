import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:admin_panel/models/DashboardButton.dart';
import '../../../constants.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton({
    Key? key,
    required this.info,
  }) : super(key: key);

  final DashButton info;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(defaultPadding * 0.75),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: info.color!.withOpacity(0.1),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SvgPicture.asset(
                      info.svgSrc!,
                      color: info.color,
                    ),
                  ),
                ],
              ),
              Text(
                info.title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        onTap: () {
          // route to page
        },
      ),
    );
  }
}
