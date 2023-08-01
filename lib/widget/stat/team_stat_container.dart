import 'package:flutter/material.dart';

import '../../models/dummy_data.dart';
import '../../res/styles.dart';

class TeamStatContainer extends StatelessWidget {
  TeamStatContainer({
    super.key,
    required this.teamName,
    required this.img,
  });
  String teamName;
  String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,

            ///color: Colors.blue.withOpacity(0.5),
            child: Image.network(img),
          ),
          SizedBox(height: 5),
          Text(
            teamName.toUpperCase(),
            style: h13w700amber,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
