
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:g_pay/constants.dart';
import 'package:animations/animations.dart';

class MyTheme {

  static final lightTheme =  ThemeData(
    primaryColor: kWhiteColor,
    brightness: Brightness.light,
    backgroundColor: kWhiteColor,
    scaffoldBackgroundColor: kGenioGreenLightColor,
    colorScheme: const ColorScheme.light(),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: kGenioGreenColor),
      bodyText2: TextStyle(color: kBlackColor),
      subtitle1: TextStyle(color: kWhiteColor),
      subtitle2: TextStyle(color: Color(0xFF001B21)),
      headline1: TextStyle(color: Color(0xFF2B4146)),
      headline2: TextStyle(color: Color(0xFF8E8E8E)),
      headline3: TextStyle(color: kGenioSuccessColor),
      headline4: TextStyle(color: kGenioInProgressColor),
      headline5: TextStyle(color: Color(0xFF434343)),
      headline6: TextStyle(color: Color(0xFF5D5D5D)),
    ),
    iconTheme: const IconThemeData(color: kWhiteColor),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(kGenioGreenLightColor),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: kWhiteColor,
      titleTextStyle: kBoldFontStyle.copyWith(
        color: const Color(0xFF001B21),
      )
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: kGenioGreenColor,
    )
  ).copyWith(
    pageTransitionsTheme: Platform.isAndroid ? const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeThroughPageTransitionsBuilder(fillColor: Colors.transparent),
      },
    ) : null,
  );

}
