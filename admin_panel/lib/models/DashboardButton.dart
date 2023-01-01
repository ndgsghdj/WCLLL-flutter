import 'package:admin_panel/constants/constants.dart';
import 'package:flutter/material.dart';

class DashButton {
  final String? svgSrc, title;
  final int? newItem;
  final Color? color;

  DashButton({
    this.svgSrc,
    this.title,
    this.newItem,
    this.color,
  });
}

List buttons = [
  DashButton(
    title: "Reports",
    newItem: 13,
    svgSrc: "icons/Documents.svg",
    color: Colors.white,  
  ),
  DashButton(
    title: "Cases",
    newItem: 13,
    svgSrc: "icons/drop_box.svg",
    color: Colors.white,
  )
];
