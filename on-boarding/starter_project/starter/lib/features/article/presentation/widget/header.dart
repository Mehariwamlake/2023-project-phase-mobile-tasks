import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:starter/core/utils/converter.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double left = convertPixle(40, "width", context);
    double right = convertPixle(45, "width", context);
    double textPadding = convertPixle(28, "height", context);
    double fontSize = convertPixle(24, "width", context);
    return Padding(
    padding: EdgeInsets.only(left: left, right: right),
    child: Text(
      'four things everyone needs to know',
      style: TextStyle(fontSize: fontSize),
    ),);
  }
}
