import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: const Color(0xFF074EE8),
      ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xFF444444),
    ),
    actionsIconTheme: IconThemeData(
      color: Color(0xFF444444),
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  cardColor: const Color(0xFFF6F6F6),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        const Color(0xFF074EE8),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      enableFeedback: true,
      fixedSize: MaterialStateProperty.all(
        const Size(double.maxFinite, 50),
      ),
    ),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: const Color(0xFFF6F6F6),
    textColor: const Color(0xFF444444),
    iconColor: const Color(0xFF444444),
    horizontalTitleGap: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    selectedColor: Colors.blueAccent,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFF6F6F6),
    labelStyle: TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: Color(0xFF444444),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFFDDDDDD),
        width: 2,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF074EE8),
        width: 2,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
  ),
  textTheme: const TextTheme(
    headline5: TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w700,
      fontSize: 25,
      color: Color(0xFF444444),
    ),
    headline6: TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Color(0xFF444444),
    ),
    bodyText1: TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: Color(0xFF818181),
    ),
    // Used in text input
    labelMedium: TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: Color(0xFF444444),
    ),
    button: TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      fontSize: 15,
      color: Color(0xFF074EE8),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
    extendedTextStyle: const TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      fontSize: 15,
      color: Colors.white,
    ),
    enableFeedback: true,
    extendedPadding: const EdgeInsets.symmetric(horizontal: 50),
    backgroundColor: const Color(0xFF074EE8),
  ),
);
