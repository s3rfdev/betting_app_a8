import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/styles.dart';

class UpComPanel extends StatelessWidget {
  UpComPanel({
    super.key,
    required this.isUp,
    required this.change,
  });
  bool isUp;
  Function change;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () => change(true),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isUp ? greyBlue : null,
                  ),
                  child: Text(
                    'UPCOMING',
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => change(false),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: !isUp ? greyBlue : null,
                  ),
                  child: Text(
                    'COMPLETED',
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
