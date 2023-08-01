import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../res/styles.dart';
import '../widget/stat/stat_table.dart';
import '../widget/stat/team_stat_container.dart';

class StatisticsPage extends StatefulWidget {
  StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 25),
                    Center(
                        child:
                            Text('statistics'.toUpperCase(), style: h22w700)),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TeamStatContainer(
                          teamName: factorList.list[0].name1,
                          img: factorList.list[0].img1,
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              'Dec 10',
                              style: h12w400,
                            ),
                            Text(
                              '1 : 0',
                              style: h24w700,
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        TeamStatContainer(
                          teamName: factorList.list[0].name2,
                          img: factorList.list[0].img2,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    StatTable(),
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
