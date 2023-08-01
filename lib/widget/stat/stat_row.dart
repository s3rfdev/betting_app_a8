import 'dart:math';

import 'package:flutter/material.dart';

import '../../res/styles.dart';

class StatRow extends StatelessWidget {
  StatRow({
    super.key,
    required this.title,
    required this.val1,
    required this.val2,
  });
  String title;
  String val1;
  String val2;
  @override
  Widget build(BuildContext context) {
    bool isLeft = Random().nextBool();
    return Row(
      children: [
        Container(
          width: 70,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            val1,
            style: isLeft ? h20w700 : h20w700amber,
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 0.5,
                color: greyBlue,
              ),
              top: BorderSide(
                width: 0.5,
                color: greyBlue,
              ),
              bottom: BorderSide(
                width: 0.5,
                color: greyBlue,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              title.toUpperCase(),
              style: h20w700,
            ),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 0.5,
                  color: greyBlue,
                ),
                top: BorderSide(
                  width: 0.5,
                  color: greyBlue,
                ),
                bottom: BorderSide(
                  width: 0.5,
                  color: greyBlue,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 70,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            val2,
            style: !isLeft ? h20w700 : h20w700amber,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 0.5,
                color: greyBlue,
              ),
              bottom: BorderSide(
                width: 0.5,
                color: greyBlue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
