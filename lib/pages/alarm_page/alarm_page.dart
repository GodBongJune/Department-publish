import 'package:department/pages/alarm_page/alarm_page_widgets/alarm_page_body.dart';
import 'package:department/pages/alarm_page/alarm_page_widgets/alarm_setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("알림"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AlarmSettingPage(),
                ),
              );
            },
            icon: Icon(
              CupertinoIcons.gear,
            ),
          ),
        ],
      ),
      body: AlarmPageBody(),
    );
  }
}
