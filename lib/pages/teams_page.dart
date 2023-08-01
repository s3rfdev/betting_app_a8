import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/teams.dart';
import '../models/tournamets.dart';
import '../repo/sofa-api/api.dart';
import '../res/styles.dart';
import '../widget/favorites/favorites_contaner.dart';
import '../widget/league/leagues_contaner.dart';
import '../widget/team/team_contaner.dart';

class TeamsPage extends StatefulWidget {
  TeamsPage({
    super.key,
    required this.trId,
  });
  int trId;
  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  Teams teams = Teams(teamsMap: {});

  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getTeams(trId: widget.trId);
      setState(() {
        teams = tmp;
      });
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.trId);
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
                    Center(child: Text('Teams'.toUpperCase(), style: h22w700)),
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
                                ...teams.teamsMap.values
                                    .map((e) => TeamContainer(
                                          id: e.id,
                                          name: e.name,
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
