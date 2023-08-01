import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/dummy_data.dart';
import '../../res/styles.dart';

class UpMatchCard extends StatelessWidget {
  const UpMatchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: darkBlue1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5),
          Text(
            'Bundaes Liga'.toUpperCase(),
            style: h10w400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Container(
                alignment: Alignment.centerRight,
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Text(
                        factorList.list[Random().nextInt(3)].name1,
                        style: h15w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.network(
                      factorList.list[Random().nextInt(3)].img1,
                      scale: 6,
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    Text(
                      'Feb 16',
                      style: h12w400,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: amber,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '04:10',
                          style: h12w400amber,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 120,
                child: Row(
                  children: [
                    Image.network(
                      factorList.list[Random().nextInt(3)].img2,
                      scale: 6,
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 80,
                      child: Text(
                        factorList.list[Random().nextInt(3)].name2,
                        style: h15w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
