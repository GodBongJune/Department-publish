import 'package:department/core/constant/color_and_size.dart';
import 'package:department/pages/calendar_page/calendar_page.dart';
import 'package:department/pages/community/community_list_page/community_list_page.dart';
import 'package:department/pages/notice/notice_list_page/notice_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> homeList = [
      {
        "image": "assets/home/home1.svg",
        "route": "",
        "title": "학과소개",
      },
      {
        "image": "assets/home/home2.svg",
        "route": "",
        "title": "학부 안내",
      },
      {
        "image": "assets/home/home3.svg",
        "route": "",
        "title": "교수 안내",
      },
      {
        "image": "assets/home/home4.svg",
        "route": NoticeListPage(),
        "title": "공지사항",
      },
      {
        "image": "assets/home/home5.svg",
        "route": "",
        "title": "취업정보",
      },
      {
        "image": "assets/home/home6.svg",
        "route": CalendarPage(),
        "title": "학사 일정",
      },
      {
        "image": "assets/home/home7.svg",
        "route": "",
        "title": "자료실",
      },
      {
        "image": "assets/home/home8.svg",
        "route": "",
        "title": "갤러리",
      },
      {
        "image": "assets/home/home9.svg",
        "route": CommunityListPage(),
        "title": "커뮤니티",
      },
    ];

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              //유저정보&공지사항
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: k3DColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        "사용자 님, 환영합니다.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NoticeListPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/logo/speaker.svg"),
                                SizedBox(width: 10),
                                Text(
                                  "오늘의 주요 공지사항 제목입니다.",
                                  style: TextStyle(
                                    color: k3DColor,
                                    fontSize: size15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              //각 게시
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.6 / 1.5,
                ),
                itemCount: homeList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => homeList[index]["route"],
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              homeList[index]["image"],
                            ),
                            SizedBox(height: 10),
                            Text(
                              homeList[index]["title"] ?? "이름없음",
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
                  );
                },
              ),
              Spacer(),
              //광고 영역
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: k3DColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
