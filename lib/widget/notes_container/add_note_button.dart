import 'package:flutter/material.dart';

import '../../res/styles.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: amber,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: darkBlue,
              child: Icon(
                Icons.add,
                color: darkBlue1,
                size: 50,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'ADD A NOTE',
            style: h15w700,
          )
        ],
      ),
    );
  }
}
