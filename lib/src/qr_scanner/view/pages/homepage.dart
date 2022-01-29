import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../qr_scanner.dart';
import '../../../shared_component/shared_component.dart';
import 'package:flutter/services.dart';

class QrScannerHomepage extends StatelessWidget {
  const QrScannerHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QrScanCubit(),
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Scan QR",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 10),
                Text(
                  "Point towards a qr code to scan",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: const QrScan(),
                  ),
                ),
                const SizedBox(height: 20),
                const QrResultViewer()
              ],
            ),
          ),
        ),
        floatingActionButton: const FloatingBtnWithToast(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class QrResultViewer extends StatelessWidget {
  const QrResultViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrScanCubit, Map<String, dynamic>>(
      builder: (context, state) {
        return Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: state.isEmpty
              ? Text(
                  "No Qr code visible",
                  style: Theme.of(context).textTheme.labelMedium,
                )
              : SelectableText(
                  state["result"],
                  style: Theme.of(context).textTheme.labelMedium,
                ),
        );
      },
    );
  }
}

class FloatingBtnWithToast extends StatelessWidget {
  const FloatingBtnWithToast({
    Key? key,
  }) : super(key: key);

  final SnackBar _snackBar = const SnackBar(
    content: Text("Copied to your clipboard"),
  );

  @override
  Widget build(BuildContext context) {
    return FloatingTextButton(
      label: "Copy to clipboard",
      onPressed: () async {
        await Clipboard.setData(
          ClipboardData(text: context.read<QrScanCubit>().qrScanData),
        );
        ScaffoldMessenger.of(context).showSnackBar(_snackBar);
      },
    );
  }
}
