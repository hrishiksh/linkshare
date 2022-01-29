import 'package:flutter/material.dart';
import './history/history.dart';
import './themes/themes.dart';

class LinkShareApp extends StatelessWidget {
  const LinkShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LinkShare",
      home: const HistoryHomepage(),
      theme: lightTheme,
    );
  }
}
