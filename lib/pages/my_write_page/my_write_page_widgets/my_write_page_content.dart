import 'package:department/core/constant/color_and_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWritePageContent extends StatelessWidget {
  const MyWritePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> contentList = [
      {
        "time": "2024.03.08",
        "title":
            "[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.",
        "content":
            "게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용",
        "image": "",
      },
      {
        "time": "2024.03.08",
        "title": "[서울역 근처] 유아 백팩 나눔",
        "content":
            "게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용게시판 세부 내용",
        "image":
            "https://fastly.picsum.photos/id/118/200/300.jpg?hmac=y5ur5cobUmPTuS2C6FvS8uE6IYI07GiElMbvlmulnUA",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: contentList.length,
        itemBuilder: (context, index) {
          bool hasImage = contentList[index]["image"] != null &&
              contentList[index]["image"].isNotEmpty;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.13,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contentList[index]["time"],
                          style: TextStyle(
                            color: kC8Color,
                            fontSize: size13,
                          ),
                        ),
                        Text(
                          contentList[index]["title"],
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          contentList[index]["content"],
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size13,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  if (hasImage)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.height * 0.08,
                        child: Image.network(
                          contentList[index]["image"],
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
