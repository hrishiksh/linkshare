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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white38,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.black87,
          ),
        ),
        scaffoldBackgroundColor: Colors.white70,
        listTileTheme: ListTileThemeData(
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          selectedColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
