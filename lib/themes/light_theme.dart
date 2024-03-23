import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: defaultColor,
  //HexColor('f9f8fe'), //Colors.grey.shade50, //myDefaultColor,
  primarySwatch: Colors.teal,
  indicatorColor: greenColor,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
      refreshBackgroundColor: Colors.white, color: Colors.blueAccent),
  cardTheme: const CardTheme(),
  appBarTheme: AppBarTheme(
    color: myDefaultColor,
    elevation: 0.0,
    titleSpacing: 0,
    //toolbarHeight: 120.h,
    actionsIconTheme: const IconThemeData(
      size: 28,
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 22.0,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.orange.shade300,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark, //Colors.white, //Colors.white
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 20,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: myDefaultColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 22.0,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 25.0,
    ),
    titleMedium: TextStyle(
      color: Colors.white, //Colors.black,
      fontSize: 18.0,
      // height: 1.5,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white, //Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 15.0,
      height: 1.5,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
);
