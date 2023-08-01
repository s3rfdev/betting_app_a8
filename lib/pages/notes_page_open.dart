import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:table_calendar/table_calendar.dart';

import '../res/styles.dart';
import '../widget/notes_container/add_note_button.dart';
import '../widget/notes_container/notes_container.dart';
import '../widget/stat/stat_table.dart';
import '../widget/stat/team_stat_container.dart';

class NotesPageOpen extends StatefulWidget {
  NotesPageOpen({super.key});

  @override
  State<NotesPageOpen> createState() => _NotesPageOpenState();
}

class _NotesPageOpenState extends State<NotesPageOpen> {
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
                    Center(child: Text('Notes'.toUpperCase(), style: h22w700)),
                    SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      height: 50,
                      decoration: BoxDecoration(
                        color: darkBlue1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'TITLE',
                        style: h15w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      height: 400,
                      decoration: BoxDecoration(
                        color: darkBlue1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Type your text here',
                        style: h15w400,
                      ),
                    ),
                    SizedBox(height: 80),
                    InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        width: 250,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: amber,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'create A NOTE'.toUpperCase(),
                          style: h17w700,
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
