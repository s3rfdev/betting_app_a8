import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../res/styles.dart';

class FactorContainer extends StatelessWidget {
  FactorContainer(
      {super.key,
      required this.isActive,
      required this.title,
      required this.id});
  String title;
  bool isActive;
  int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: greyBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('images/g$id.svg'),
          Text(title, style: h15w700),
          Icon(
            isActive ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
            color: isActive ? greyBlue : Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
