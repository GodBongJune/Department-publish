import 'package:department/pages/community/community_change_page/community_change_page_widgets/community_change_page_body.dart';
import 'package:flutter/material.dart';

class CommunityChangePage extends StatelessWidget {
  const CommunityChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("수정"),
      ),
      body: CommunityChangePageBody(),
    );
  }
}
