import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/styles.dart';

class TeamContainer extends StatelessWidget {
  TeamContainer({super.key, required this.name, required this.id});
  String name;
  int id;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: () => Get.to(PlayersPage(teamId: id)),
      child: Container(
        height: 60,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 0),
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 30,
                  child: ClipRRect(
                      child: Image.network(
                    'https://api.sofascore1.com/api/v1/team/$id/image',
                  )),
                ),
                SizedBox(width: 20),
                Text(
                  name,
                  style: h17w700,
                ),
              ],
            ),
            Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
