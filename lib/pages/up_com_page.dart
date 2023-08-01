import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widget/home/top_sport_panel.dart';
import '../widget/up_com_page/comp_team_card.dart';
import '../widget/up_com_page/up_match_card.dart';
import '../widget/up_com_panel/up_com_panel.dart';

class UpComPage extends StatefulWidget {
  UpComPage({super.key});

  @override
  State<UpComPage> createState() => _UpComPageState();
}

class _UpComPageState extends State<UpComPage> {
  bool isUp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        backgroundColor: amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSportPanel(),
            Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    UpComPanel(
                      isUp: isUp,
                      change: ((val) => setState(() {
                            isUp = val;
                          })),
                    ),
                    SizedBox(height: 25),
                    UpMatchCard(),
                    SizedBox(height: 25),
                    CompTeamCard(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
