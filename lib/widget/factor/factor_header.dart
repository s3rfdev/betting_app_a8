import 'package:flutter/material.dart';

import '../../res/styles.dart';

class FactorTabHeader extends StatelessWidget {
  const FactorTabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: greyBlue,
                  width: .5,
                ),
                top: BorderSide(
                  color: greyBlue,
                  width: .5,
                ),
                right: BorderSide(
                  color: greyBlue,
                  width: .5,
                ),
              ),
            ),
            child: Text(''),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              top: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              right: BorderSide(
                color: greyBlue,
                width: .5,
              ),
            ),
          ),
          width: 60,
          height: 40,
          child: Text(
            '1',
            style: h15w700amber,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              top: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              right: BorderSide(
                color: greyBlue,
                width: .5,
              ),
            ),
          ),
          width: 60,
          height: 40,
          child: Text(
            'x',
            style: h15w700amber,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyBlue,
                width: .5,
              ),
              top: BorderSide(
                color: greyBlue,
                width: .5,
              ),
            ),
          ),
          width: 60,
          height: 40,
          child: Text(
            '2',
            style: h15w700amber,
          ),
        ),
      ],
    );
  }
}
