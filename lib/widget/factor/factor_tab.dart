import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/dummy_data.dart';
import 'factor_header.dart';
import 'factor_tab_row.dart';

class FactorTab extends StatelessWidget {
  FactorTab({super.key});

  @override
  Widget build(BuildContext context) {
    int r = Random().nextInt(2);
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FactorTabHeader(),
          FactorTabRow(
            name1: factorList.list[r].name1,
            name2: factorList.list[r].name2,
            win1: '1.${Random().nextInt(90)}',
            win2: '1.${Random().nextInt(90)}',
          ),
          FactorTabRow(
            name1: factorList.list[r + 1].name1,
            name2: factorList.list[r + 1].name2,
            win1: '1.${Random().nextInt(90)}',
            win2: '1.${Random().nextInt(90)}',
          ),
        ],
      ),
    );
  }
}
