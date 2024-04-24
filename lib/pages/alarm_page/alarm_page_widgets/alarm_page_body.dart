import 'package:department/core/constant/color_and_size.dart';
import 'package:flutter/material.dart';

class AlarmPageBody extends StatelessWidget {
  const AlarmPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> alarmList = [
      {
        "title": "[중고거래] 2024년도 2차 국가 장학금 신청 기한입니다.서둘러서 신청하세요",
        "time": "2023.02.11",
      },
      {
        "title": "[학사일정] 수강 정정 기간 입니다.",
        "time": "2023.04.11",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: alarmList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    alarmList[index]["title"],
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size15,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    alarmList[index]["time"],
                    style: TextStyle(
                      color: k9DColor,
                      fontSize: size13,
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
