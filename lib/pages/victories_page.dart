import 'package:flutter/material.dart';
import '../res/styles.dart';
import '../widget/factor/factor_container.dart';
import '../widget/factor/factor_tab.dart';
import '../widget/favorites/favorites_contaner.dart';

class VictoriesPage extends StatefulWidget {
  VictoriesPage({super.key});

  @override
  State<VictoriesPage> createState() => _VictoriesPageState();
}

class _VictoriesPageState extends State<VictoriesPage> {
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
                        child: Text('Victories'.toUpperCase(), style: h22w700)),
                    SizedBox(height: 25),
                    Container(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
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
