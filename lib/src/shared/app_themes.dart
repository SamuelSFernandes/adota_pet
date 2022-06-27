import 'package:flutter/material.dart';

import 'constants/app_colors.dart';

final kThemeData = ThemeData(
  primaryColorLight: kPrimaryColor,
  primaryColor: kPrimaryColor,
  appBarTheme: AppBarTheme(
    backgroundColor: kPrimaryColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(
      color: Colors.white,
    ),
    labelStyle: TextStyle(
      color: Colors.white,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
    ),
  ),
  textTheme: TextTheme(
    headline1: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    headline2: const TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
    headline3: TextStyle(
      color: kPrimaryColor,
      fontSize: 20,
    ),
  ),
);
