import 'package:flutter/material.dart';
import './qr_generator/qr_generator.dart';
import './qr_scanner/qr_scanner.dart';
import './history/history.dart';

class LinkShareApp extends StatelessWidget {
  const LinkShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LinkShare",
      home: const HistoryHomepage(),
      theme: ThemeData.light().copyWith(
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
            color: Color(0xFF074EE8),
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
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
            )),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData().copyWith(
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
      ),
    );
  }
}
