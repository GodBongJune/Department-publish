import 'package:department/core/constant/color_and_size.dart';
import 'package:department/pages/community/community_detail_page/community_detail_page_widgets/community_detail_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityDetailPage extends StatefulWidget {
  const CommunityDetailPage({super.key});

  @override
  State<CommunityDetailPage> createState() => _CommunityDetailPageState();
}

class _CommunityDetailPageState extends State<CommunityDetailPage> {
  bool bookmark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("커뮤니티"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      bookmark = !bookmark;
                    });
                  },
                  child: bookmark
                      ? Icon(CupertinoIcons.bookmark_fill, color: kFFColor)
                      : Icon(CupertinoIcons.bookmark),
                ),
                SizedBox(width: 10),
                ContentMenu(),
              ],
            ),
          ),
        ],
      ),
      body: CommunityDetailPageBody(),
    );
  }
}

class ContentMenu extends StatelessWidget {
  const ContentMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              content: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.report_gmailerrorred,
                                size: 40,
                              ),
                              Text(
                                "신고하기",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              CupertinoIcons.nosign,
                              size: 40,
                            ),
                            Text(
                              "차단하기",
                              style: TextStyle(
                                color: k3DColor,
                                fontSize: size15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Icon(Icons.menu),
    );
  }
}
