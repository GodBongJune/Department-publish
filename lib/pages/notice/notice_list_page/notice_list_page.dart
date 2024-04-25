import 'package:department/pages/notice/notice_list_page/notice_list_page_widgets/notice_list_page_body.dart';
import 'package:flutter/material.dart';

class NoticeListPage extends StatelessWidget {
  const NoticeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("공지사항"),
      ),
      body: NoticeListPageBody(),
    );
  }
}
