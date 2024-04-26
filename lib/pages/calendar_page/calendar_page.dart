import 'package:department/pages/calendar_page/calendar_page_widgets/calendar_page_body.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("학사 일정"),
      ),
      body: CalendarPageBody(),
    );
  }
}
