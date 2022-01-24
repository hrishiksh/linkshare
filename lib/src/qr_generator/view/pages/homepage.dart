import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGeneratorHomepage extends StatelessWidget {
  const QrGeneratorHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: QrImage(
          data: 'This QR code will show the error state instead',
          version: QrVersions.auto,
          padding: const EdgeInsets.all(20),
          size: 320,
          gapless: false,
          semanticsLabel:
              "a QR code generated depending on the input data you have provided from the textfield",
          errorStateBuilder: (cxt, err) {
            return const Center(
              child: Text(
                "Uh oh! Something went wrong...",
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }
}
