import 'package:department/core/constant/color_and_size.dart';
import 'package:department/pages/community/community_list_page/community_list_page_widgets/community_list_page_body.dart';
import 'package:department/pages/community/community_write_page/community_write_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityListPage extends StatelessWidget {
  const CommunityListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("커뮤니티"),
      ),
      body: CommunityListPageBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: k3DColor,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CommunityWritePage(),
            ),
          );
        },
        child: Icon(
          CupertinoIcons.plus,
          color: Colors.white,
        ),
      ),
    );
  }
}
