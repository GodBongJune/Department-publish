import 'package:department/core/constant/color_and_size.dart';
import 'package:flutter/material.dart';

MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    primarySwatch: primaryWhite,
    scaffoldBackgroundColor: primaryWhite,
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    backgroundColor: Colors.white,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      color: k3DColor,
      fontSize: size18,
    ),
    centerTitle: true,
    elevation: 0,
  );
}
