import 'package:department/pages/auth_and_find/join_page/join_page_widgets/join_page_agree.dart';
import 'package:flutter/material.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: JoinPageAgree(),
    );
  }
}
