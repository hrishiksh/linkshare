import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../qr_generator.dart';

class Qrview extends StatelessWidget {
  const Qrview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextToQrCubit, String>(
      builder: (context, state) {
        if (state == "") {
          return Container();
        } else {
          return QrImage(
            data: state,
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
          );
        }
      },
    );
  }
}
