import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/dummy_data.dart';
import '../../res/styles.dart';

class FactorTabRow extends StatelessWidget {
  FactorTabRow({
    super.key,
    required this.name1,
    required this.name2,
    required this.win1,
    required this.win2,
  });
  String name1;
  String name2;
  String win1;
  String win2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              top: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              right: BorderSide(
                color: greyBlue,
                width: .5,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        name1,
                        style: h15w400amber,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.network(
                      factorList.list[Random().nextInt(3)].img2,
                      scale: 7,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        name2,
                        style: h15w400amber,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.network(
                      factorList.list[Random().nextInt(3)].img1,
                      scale: 7,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        )),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              top: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              right: BorderSide(
                color: greyBlue,
                width: .5,
              ),
            ),
          ),
          width: 60,
          height: 80,
          child: Text(win1, style: h15w400amber),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              top: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              right: BorderSide(
                color: greyBlue,
                width: .5,
              ),
            ),
          ),
          width: 60,
          height: 80,
          child: Text('2.${Random().nextInt(90)}', style: h15w400amber),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              top: BorderSide(
                color: greyBlue,
                width: .5,
              ),
            ),
          ),
          width: 60,
          height: 80,
          child: Text(win2, style: h15w400amber),
        ),
      ],
    );
  }
}
