import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../res/styles.dart';
import '../widget/factor/factor_container.dart';
import '../widget/factor/factor_tab.dart';
import '../widget/notes_container/add_note_button.dart';
import '../widget/notes_container/notes_container.dart';
import '../widget/stat/stat_table.dart';
import '../widget/stat/team_stat_container.dart';

class FactorPage extends StatefulWidget {
  FactorPage({super.key});

  @override
  State<FactorPage> createState() => _FactorPageState();
}

class _FactorPageState extends State<FactorPage> {
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
                    Center(child: Text('Factor'.toUpperCase(), style: h22w700)),
                    SizedBox(height: 25),
                    Container(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: () => setState(() {
                                    activeIndex = 0;
                                  }),
                                  child: FactorContainer(
                                    isActive: activeIndex == 0,
                                    title: 'Golden Bookmaker'.toUpperCase(),
                                    id: 3,
                                  ),
                                ),
                                SizedBox(height: 20),
                                if (activeIndex == 0) FactorTab(),
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: () => setState(() {
                                    activeIndex = 1;
                                  }),
                                  child: FactorContainer(
                                    isActive: activeIndex == 1,
                                    title: 'Bet Royal'.toUpperCase(),
                                    id: 2,
                                  ),
                                ),
                                SizedBox(height: 20),
                                if (activeIndex == 1) FactorTab(),
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: () => setState(() {
                                    activeIndex = 2;
                                  }),
                                  child: FactorContainer(
                                    isActive: activeIndex == 2,
                                    title: 'Bookmaker Club'.toUpperCase(),
                                    id: 1,
                                  ),
                                ),
                                SizedBox(height: 20),
                                if (activeIndex == 2) FactorTab(),
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
