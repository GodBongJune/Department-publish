import 'package:department/core/constant/color_and_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarkListPageBody extends StatefulWidget {
  const BookmarkListPageBody({super.key});

  @override
  State<BookmarkListPageBody> createState() => _BookmarkListPageBodyState();
}

class _BookmarkListPageBodyState extends State<BookmarkListPageBody> {
  List<Map<String, dynamic>> bookmarkList = [
    {
      "date": "2024.03.07",
      "title": "[모집중] 2024년 ooo 사업 참여학생 모집 안내",
      "bookmark": true,
    },
    {
      "date": "2024.03.07",
      "title": "[졸업] 2024년 2월 졸업예정자 졸업논문 제출 안내안내안내안내안내안내안내안내안내",
      "bookmark": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: bookmarkList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bookmarkList[index]["date"],
                          style: TextStyle(
                            color: kC8Color,
                            fontSize: size13,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          bookmarkList[index]["title"],
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bookmarkList[index]['bookmark'] =
                            !bookmarkList[index]['bookmark'];
                      });
                    },
                    child: Icon(
                      bookmarkList[index]["bookmark"]
                          ? CupertinoIcons.bookmark_fill
                          : CupertinoIcons.bookmark,
                      color:
                          bookmarkList[index]["bookmark"] ? kFFColor : k3DColor,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
