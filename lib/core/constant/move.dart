import 'package:department/pages/auth_and_find/join_page/join_page_widgets/joIn_page_formfield.dart';
import 'package:flutter/material.dart';

class Move {
  //회원가입 정보입력 페이지
  static String joinPageFormfield = "/joinPageFormField";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    //회원가입 정보입력 페이지
    Move.joinPageFormfield: (context) => JoinPageFormfield(),
  };
}
