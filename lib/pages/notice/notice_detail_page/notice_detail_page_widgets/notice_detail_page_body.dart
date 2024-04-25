import 'package:department/core/constant/color_and_size.dart';
import 'package:flutter/material.dart';

class NoticeDetailPageBody extends StatelessWidget {
  const NoticeDetailPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2024.03.07",
                style: TextStyle(
                  color: kC8Color,
                  fontSize: size13,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "테스트 공지사항 제목",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "대한민국의 경제질서는 개인과 기업의 경제상의 자유와 창의를 존중함을 기본으로 한다. 선거에 관한 경비는 법률이 정하는 경우를 제외하고는 정당 또는 후보자에게 부담시킬 수 없다.\n\n"
            "모든 국민은 근로의 권리를 가진다. 국가는 사회적·경제적 방법으로 근로자의 고용의 증진과 적정임금의 보장에 노력하여야 하며, 법률이 정하는 바에 의하여 최저임금제를 시행하여야 한다.\n\n"
            "대통령후보자가 1인일 때에는 그 득표수가 선거권자 총수의 3분의 1 이상이 아니면 대통령으로 당선될 수 없다. 모든 국민은 건강하고 쾌적한 환경에서 생활할 권리를 가지며, 국가와 국민은 환경보전을 위하여 노력하여야 한다.",
          ),
        ),
      ],
    );
  }
}
