import 'package:flutter/material.dart';
import '../res/styles.dart';
import '../widget/factor/factor_container.dart';
import '../widget/factor/factor_tab.dart';
import '../widget/favorites/favorites_contaner.dart';
import '../widget/up_com_panel/up_com_panel.dart';

class FavoritesPage extends StatefulWidget {
  FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
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
                    Center(
                        child: Text('Favorites'.toUpperCase(), style: h22w700)),
                    SizedBox(height: 25),
                    Container(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                UpComPanel(isUp: false, change: () {}),
                                SizedBox(height: 20),
                                FavoritesContaner(id: 0),
                                FavoritesContaner(id: 1),
                                FavoritesContaner(id: 2),
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
