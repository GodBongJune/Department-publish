import 'package:department/pages/notice/notice_detail_page/notice_detail_page_widgets/notice_detail_page_body.dart';
import 'package:flutter/material.dart';

class NoticeDetailPage extends StatelessWidget {
  const NoticeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("공지사항"),
      ),
      body: NoticeDetailPageBody(),
    );
  }
}
