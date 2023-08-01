import 'package:flutter/material.dart';

import '../../res/styles.dart';

class CompTeamCard extends StatelessWidget {
  CompTeamCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 110,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: darkBlue1,
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: Colors.blue,
            child: Icon(Icons.ac_unit, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Team name',
            style: h13w700,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
