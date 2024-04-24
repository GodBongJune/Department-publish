import 'package:department/core/constant/color_and_size.dart';
import 'package:department/pages/my_info_page/my_info_page_widgets/my_info_password_change_page.dart';
import 'package:flutter/material.dart';

class MyInfoPageBody extends StatelessWidget {
  const MyInfoPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
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
              infoFormfield(hintText: "사용자"),
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
              infoFormfield(hintText: "01000000000"),
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
              infoFormfield(hintText: "aaa@aaa.com"),
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
              Row(
                children: [
                  Expanded(
                    child: infoFormfield(
                      hintText: "**********",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyInfoPasswordChangePage(),
                          ),
                        );
                      },
                      child: Text(
                        "변경",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class infoFormfield extends StatelessWidget {
  String? hintText;

  infoFormfield({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      style: TextStyle(decorationThickness: 0),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "${hintText}",
        hintStyle: TextStyle(
          color: kC8Color,
          fontSize: size15,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kE8Color),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kE8Color),
        ),
      ),
    );
  }
}
