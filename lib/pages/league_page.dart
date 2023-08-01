import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/tournamets.dart';
import '../repo/sofa-api/api.dart';
import '../res/styles.dart';
import '../widget/favorites/favorites_contaner.dart';
import '../widget/league/leagues_contaner.dart';
import 'teams_page.dart';

class LeaguePage extends StatefulWidget {
  LeaguePage({super.key});

  @override
  State<LeaguePage> createState() => _LeaguePageState();
}

class _LeaguePageState extends State<LeaguePage> {
  Tournaments tr = Tournaments(tournamentMap: {});
  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getTournaments();
      setState(() {
        tr = tmp;
      });
    }();
    super.initState();
  }

  int activeIndex = 0;
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
                    Center(child: Text('League'.toUpperCase(), style: h22w700)),
                    SizedBox(height: 25),
                    Container(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                ...tr.tournamentMap.values
                                    .map((e) => InkWell(
                                          //onTap: () => Get.to(TeamPage(trId: e.id)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  onTap: () => Get.to(
                                                      TeamsPage(trId: e.id)),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                          radius: 10,
                                                          backgroundColor:
                                                              Colors.white),
                                                      SizedBox(width: 10),
                                                      Container(
                                                        width: 200,
                                                        child: Text(
                                                          e.name,
                                                          style: h17w700,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider()
                                              ],
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                SizedBox(height: 30),
                                //-----
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
