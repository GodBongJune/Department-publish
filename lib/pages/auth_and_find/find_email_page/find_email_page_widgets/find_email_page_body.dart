import 'package:department/core/constant/color_and_size.dart';
import 'package:department/core/constant/custom_util.dart';
import 'package:department/pages/auth_and_find/find_email_page/find_email_page_widgets/find_email_page_success.dart';
import 'package:flutter/material.dart';

class FindEmailPageBody extends StatefulWidget {
  const FindEmailPageBody({super.key});

  @override
  State<FindEmailPageBody> createState() => _FindEmailPageBodyState();
}

class _FindEmailPageBodyState extends State<FindEmailPageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                //이름
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "이름",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size15,
                      ),
                    ),
                    SizedBox(height: 5),
                    customTextFormField(
                      context: context,
                      hintText: "이름을 입력해주세요",
                      obscureText: false,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //휴대전화
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "휴대폰번호",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size15,
                      ),
                    ),
                    SizedBox(height: 5),
                    customTextFormField(
                      context: context,
                      hintText: "휴대폰번호를 입력해주세요",
                      obscureText: false,
                      suffix: "인증하기",
                      number: true,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //인증번호
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "인증번호",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size15,
                      ),
                    ),
                    SizedBox(height: 5),
                    customTextFormField(
                      context: context,
                      hintText: "인증번호를 입력해주세요",
                      obscureText: false,
                      suffix: "확인",
                      number: true,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Spacer(),
                basicButton(
                  context: context,
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => FindEmailPageSuccess(),
                      ),
                    );
                  },
                  buttonColor: k3DColor,
                  textColor: Colors.white,
                  text: "아이디 찾기",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
