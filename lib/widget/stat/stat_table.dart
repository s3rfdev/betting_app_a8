import 'dart:math';

import 'package:flutter/material.dart';

import 'stat_row.dart';

class StatTable extends StatelessWidget {
  const StatTable({super.key});

  @override
  Widget build(BuildContext context) {
    int val1 = Random().nextInt(100);
    int val2 = Random().nextInt(100);
    int val3 = Random().nextInt(100);
    return Column(
      children: [
        StatRow(title: 'action areas', val1: '$val1%', val2: '${100 - val1}%'),
        StatRow(
          title: 'attacks',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'corners',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'corner H',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'crosses',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
            title: 'crossing accuracy', val1: '$val2%', val2: '${100 - val2}%'),
        StatRow(title: 'dangerous attacks', val1: '30%', val2: '70%'),
        StatRow(
          title: 'key passes',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'off target',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'on target',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
            title: 'passing   accuracy',
            val1: '$val3%',
            val2: '${100 - val3}%'),
        StatRow(
          title: 'penalties',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'possession rt',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'red cards',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'substitutions',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'xg',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
        StatRow(
          title: 'yellow cards',
          val1: Random().nextInt(20).toString(),
          val2: Random().nextInt(20).toString(),
        ),
      ],
    );
  }
}
