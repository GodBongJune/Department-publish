import 'package:department/pages/auth_and_find/find_password_page/find_password_page.dart';
import 'package:department/pages/auth_and_find/find_password_page/find_password_page_widget/find_password_change_page.dart';
import 'package:department/pages/auth_and_find/join_page/join_page_widgets/joIn_page_formfield.dart';
import 'package:department/pages/auth_and_find/login_page/login_page.dart';
import 'package:department/pages/community/community_change_page/community_change_page.dart';
import 'package:flutter/material.dart';

class Move {
  //회원가입 정보입력 페이지
  static String joinPageFormfield = "/joinPageFormField";

  //비밀번호 찾기 페이지
  static String findPassword = "/findPassword";

  //비밀번호 찾기&변경 페이지
  static String findPasswordChange = "/findPasswordChange";

  //글 수정 페이지
  static String communityChange = "/communityChange";

  //로그인 페이지
  static String login = "/login";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    //회원가입 정보입력 페이지
    Move.joinPageFormfield: (context) => JoinPageFormfield(),

    //비밀번호 찾기 페이지
    Move.findPassword: (context) => FindPasswordPage(),

    //비밀번호 찾기&변경 페이지
    Move.findPasswordChange: (context) => FindPasswordChangePage(),

    //글 수정 페이지
    Move.communityChange: (context) => CommunityChangePage(),

    //로그인 페이지
    Move.login: (context) => LoginPage(),
  };
}
