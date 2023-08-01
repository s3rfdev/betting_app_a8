import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widget/home/home_item_container.dart';
import '../widget/home/top_sport_panel.dart';
import '../widget/home/up_com.dart';
import 'calendar_page.dart';
import 'factor_page.dart';
import 'favorites_page.dart';
import 'league_page.dart';
import 'notes_page.dart';
import 'statistics_page.dart';
import 'teams_page.dart';
import 'victories_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      appBar: AppBar(
        backgroundColor: amber,
        centerTitle: true,
        title: Image.asset(
          'images/logo.png',
          scale: 1.4,
        ),
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
                    UpCom(),
                    SizedBox(height: 25),
                    InkWell(
                      onTap: () => Get.to(StatisticsPage()),
                      child: HomeItemContainer(
                        title: 'STATISTICS',
                        image: 'images/stat.png',
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(CalendarPage()),
                      child: HomeItemContainer(
                        title: 'CALENDAR',
                        image: 'images/calendar.png',
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(NotesPage()),
                      child: HomeItemContainer(
                        title: 'NOTES',
                        image: 'images/notes.png',
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(FactorPage()),
                      child: HomeItemContainer(
                        title: 'FACTOR',
                        image: 'images/factor.png',
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(FavoritesPage()),
                      child: HomeItemContainer(
                        title: 'FAVOURITES',
                        image: 'images/star.png',
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(LeaguePage()),
                      child: HomeItemContainer(
                        title: 'LEAGUE',
                        image: 'images/league.png',
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(TeamsPage(trId: 86)),
                      child: HomeItemContainer(
                        title: 'TEAM',
                        image: 'images/team.png',
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(VictoriesPage()),
                      child: HomeItemContainer(
                        title: 'VICTORIES',
                        image: 'images/victories.png',
                      ),
                    ),
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
