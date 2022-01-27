import 'package:flutter/material.dart';
import '../../model/model.dart';

class HistoryHomepage extends StatelessWidget {
  const HistoryHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SafeArea(
        child: ListView.separated(
          itemCount: linkData.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ListTile(
                leading: const Icon(Icons.link_rounded),
                title: Text(
                  linkData[index]["link"],
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
          separatorBuilder: (_, index) {
            return const SizedBox(height: 5);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() => print("pressed")),
        label: const Text("Create a new link"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Linkshare",
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.qr_code_2_rounded),
          //TODO: apply this on pressed function
          onPressed: () {
            print("action clicked");
          },
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
