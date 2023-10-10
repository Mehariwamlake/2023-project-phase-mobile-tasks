import 'package:flutter/material.dart';
import 'package:starter/core/utils/colors.dart';

class HeaderIconButtons extends StatelessWidget {
  const HeaderIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back,
          color: primaryTextColor,
          )),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz,
          color: primaryTextColor,
          ))
      ],),
      );
      
  }
}