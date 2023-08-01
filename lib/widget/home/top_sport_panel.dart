import 'package:flutter/material.dart';

import '../../res/styles.dart';

class TopSportPanel extends StatelessWidget {
  const TopSportPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: amber,
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('images/soccer.png'),
          Image.asset('images/hockey.png'),
          Image.asset('images/basketball.png'),
          Image.asset('images/volleyball.png'),
        ],
      ),
    );
  }
}
