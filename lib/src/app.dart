import 'package:flutter/material.dart';
import './qr_generator/qr_generator.dart';
import './qr_scanner/qr_scanner.dart';
import './history/history.dart';
import './themes/themes.dart';

class LinkShareApp extends StatelessWidget {
  const LinkShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LinkShare",
      home: const QrScannerHomepage(),
      theme: lightTheme,
    );
  }
}
