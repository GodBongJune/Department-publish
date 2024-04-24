import 'package:department/core/constant/color_and_size.dart';
import 'package:department/pages/my_info_page/my_info_page.dart';
import 'package:department/pages/my_write_page/my_write_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //내정보 수정
                      Row(
                        children: [
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MyInfoPage(),
                                ),
                              );
                            },
                            child: Icon(
                              CupertinoIcons.gear,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      // 사용자 이름
                      Text(
                        "사용자 님",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //내가 쓴 글 & 댓글
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MyWritePage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  "게시물",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MyWritePage(
                                    tabIndex: 1,
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  "댓글",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "12",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //저장한목록
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "저장한 목록",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.right_chevron, color: k3DColor),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              //고객센터
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "고객센터",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(CupertinoIcons.right_chevron, color: k3DColor),
                    ],
                  ),
                ),
              ),
              Divider(),
              //이용약관
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "이용약관",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.right_chevron, color: k3DColor),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              //개인정보 처리방침
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "개인정보 처리방침",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.right_chevron, color: k3DColor),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              //로그아웃
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "로그아웃",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.right_chevron, color: k3DColor),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
