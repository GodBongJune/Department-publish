import 'package:department/core/constant/color_and_size.dart';
import 'package:department/core/constant/custom_util.dart';
import 'package:flutter/material.dart';

class FindPasswordChangePage extends StatelessWidget {
  const FindPasswordChangePage({super.key});

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
                  //비밀번호
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "새 비밀번호 입력",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                        ),
                      ),
                      SizedBox(height: 5),
                      customTextFormField(
                        context: context,
                        hintText: "새 비밀번호를 입력해주세요",
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
                        "새 비밀번호 재입력",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                        ),
                      ),
                      SizedBox(height: 5),
                      customTextFormField(
                        context: context,
                        hintText: "새 비밀번호를 다시 입력해주세요",
                        obscureText: true,
                      ),
                    ],
                  ),
                  Spacer(),
                  basicButton(
                    context: context,
                    onTap: () {
                      customSnackbar(context, "비밀번호 변경완료");
                      Navigator.of(context).pop();
                    },
                    buttonColor: k3DColor,
                    textColor: Colors.white,
                    text: "비밀번호 변경",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
