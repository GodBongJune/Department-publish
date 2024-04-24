import 'package:department/pages/auth_and_find_page/login_page/login_page.dart';
import 'package:department/pages/launch_page/launch_page_widgets/launch_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: LaunchPageBody(),
    );
  }
}
