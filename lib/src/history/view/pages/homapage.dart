import 'package:flutter/material.dart';
import '../../model/model.dart';

class HistoryHomepage extends StatelessWidget {
  const HistoryHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: ListView.separated(
          itemCount: linkData.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(linkData[index]["link"]),
            );
          },
          separatorBuilder: (_, index) {
            return const SizedBox(height: 10);
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("History"),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(double.maxFinite),
          ),
          child: IconButton(
            icon: const Icon(Icons.qr_code_2_rounded),
            //TODO: apply this on pressed function
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
