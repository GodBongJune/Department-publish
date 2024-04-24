import 'package:department/core/constant/color_and_size.dart';
import 'package:department/core/constant/custom_util.dart';
import 'package:flutter/material.dart';

class JoinPageFormfield extends StatelessWidget {
  const JoinPageFormfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
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
                  //이메일
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "이메일",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                        ),
                      ),
                      SizedBox(height: 5),
                      customTextFormField(
                        context: context,
                        hintText: "이메일을 입력해주세요",
                        obscureText: false,
                        suffix: "인증하기",
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //이메일 인증
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
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //비밀번호
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "비밀번호",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                        ),
                      ),
                      SizedBox(height: 5),
                      customTextFormField(
                        context: context,
                        hintText: "비밀번호를 입력해주세요",
                        obscureText: true,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //비밀번호 재입력
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "비밀번호 확인",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                        ),
                      ),
                      SizedBox(height: 5),
                      customTextFormField(
                        context: context,
                        hintText: "비밀번호를 다시 입력해주세요",
                        obscureText: true,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //휴대전화
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "휴대폰 번호",
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
                      ),
                    ],
                  ),
                  Spacer(),
                  basicButton(
                    context: context,
                    onTap: () {},
                    buttonColor: k3DColor,
                    textColor: Colors.white,
                    text: "회원가입하기",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
