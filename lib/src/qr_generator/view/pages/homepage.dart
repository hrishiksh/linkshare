import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../qr_generator.dart';
import '../../../shared_component/floating_text_button.dart';

class QrGeneratorHomepage extends StatelessWidget {
  const QrGeneratorHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextToQrCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create a new link",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 20),
                  const InputText(),
                  const SizedBox(height: 30),
                  const Center(
                    child: Qrview(),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingTextButton(
          label: "Share with a friend",
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class InputText extends StatelessWidget {
  const InputText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.labelMedium,
      decoration: const InputDecoration(
        labelText: "Paste your link here",
      ),
      onSubmitted: (fieldvalue) {
        context.read<TextToQrCubit>().generateQR(fieldvalue);
      },
    );
  }
}
