import 'package:department/pages/my_info_page/my_info_page_widgets/my_info_page_body.dart';
import 'package:flutter/material.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("내정보"),
      ),
      body: MyInfoPageBody(),
    );
  }
}
