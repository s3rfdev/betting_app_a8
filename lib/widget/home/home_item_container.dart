import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/styles.dart';

class HomeItemContainer extends StatelessWidget {
  HomeItemContainer({
    super.key,
    required this.title,
    required this.image,
  });
  String title;
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: darkBlue1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: CircleAvatar(
              backgroundColor: greyBlue,
              radius: 30,
              child: Image.asset(image),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                title,
                style: h17w700,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
