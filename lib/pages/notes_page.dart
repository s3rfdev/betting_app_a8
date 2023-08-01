import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:table_calendar/table_calendar.dart';

import '../res/styles.dart';
import '../widget/notes_container/add_note_button.dart';
import '../widget/notes_container/notes_container.dart';
import '../widget/stat/stat_table.dart';
import '../widget/stat/team_stat_container.dart';
import 'notes_page_open.dart';

class NotesPage extends StatefulWidget {
  NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
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
                    NotesContainer(),
                    SizedBox(height: 20),
                    NotesContainer(),
                    SizedBox(height: 80),
                    InkWell(
                      onTap: () => Get.to(NotesPageOpen()),
                      child: AddNoteButton(),
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
