import 'package:flutter/material.dart';

import '../../res/styles.dart';

class NotesContainer extends StatelessWidget {
  const NotesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: darkBlue1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('NOTE 1', style: h15w700),
          SizedBox(height: 20),
          Text(
            'West Brom ruthlessly exposed the 70-place gap between themselves and National League ',
            style: h15w400,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.edit, color: greyBlue),
              Expanded(child: SizedBox()),
              Icon(Icons.delete, color: greyBlue)
            ],
          ),
        ],
      ),
    );
  }
}
