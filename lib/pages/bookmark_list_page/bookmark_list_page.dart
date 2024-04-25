import 'package:department/pages/bookmark_list_page/bookmark_list_page_widgets/bookmark_list_page_body.dart';
import 'package:flutter/material.dart';

class BookmarkListPage extends StatelessWidget {
  const BookmarkListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("저장한 목록"),
      ),
      body: BookmarkListPageBody(),
    );
  }
}
