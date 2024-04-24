import 'package:department/core/constant/color_and_size.dart';
import 'package:flutter/material.dart';

class JoinCollectionAgree extends StatelessWidget {
  const JoinCollectionAgree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "개인정보 수집 동의",
              style: TextStyle(
                color: k3DColor,
                fontSize: size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "<(주)엠바스>('www.mbaas.kr'이하 'mBaaS.Shop')는 「개인정보 보호법」 제30조에 따라 정보 주체의 개인정보를 보호하고 이와 관련한 "
              "고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.\n\n"
              "본 개인정보처리방침의 목차는 아래와 같습니다."
              "관계법령이 요구하는 개인정보처리방침의 필수 사항과 mBaaS.Shop 자체적으로 이용자 개인정보 보호에 있어 중요하게 판단하는 내용을 포함하였습니다.\n\n"
              "제1조(개인정보의 처리 목적)\n"
              "제2조(개인정보의 처리 및 보유 기간)\n"
              "제3조(처리하는 개인정보의 항목)\n"
              "제4조(개인정보의 제3자 제공)\n"
              "제5조(개인정보의 파기절차 및 파기방법)\n"
              "제6조(미이용자의 개인정보 파기 등에 관한 조치)\n"
              "제7조(정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항)\n"
              "제8조(개인정보의 안전성 확보조치에 관한 사항)\n"
              "제9조(행태정보의 수집·이용·제공 및 거부 등에 관한 사항)\n"
              "제10조(추가적인 이용·제공 판단기준)\n"
              "제11조(개인정보 보호책임자에 관한 사항)\n"
              "제12조(개인정보의 열람청구를 접수·처리하는 부서)\n"
              "제13조(정보 주체의 권익침해에 대한 구제 방법)\n"
              "제14조(개인정보 처리방침 변경)\n"
              "○ 이 개인정보처리방침은 2023년 3월 31일부터 적용됩니다.",
              style: TextStyle(
                color: k3DColor,
                fontSize: size15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
