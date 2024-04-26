import 'package:department/pages/community/community_write_page/community_write_page_widgets/community_write_page_body.dart';
import 'package:flutter/material.dart';

class CommunityWritePage extends StatelessWidget {
  const CommunityWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("글쓰기"),
      ),
      body: CommunityWritePageBody(),
    );
  }
}
