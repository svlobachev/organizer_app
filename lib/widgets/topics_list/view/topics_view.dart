import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/topics_model.dart';

class TopicsView extends StatelessWidget {
  final List<ListItem> items;

  TopicsView({key, required this.items});

  @override
  Widget build(BuildContext context) {
    // void _onChanged(bool? value) {
    //   _isChecked.value = value!;
    // }

    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 0,
          // color: Colors.blueGrey,
          thickness: 0,
        ),
        // Let the ListView know how many items it needs to build.
        itemCount: items.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (BuildContext context, int index) {
          final ListItem item = items[index];

          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
            trailing: Obx(() => item.buildCheckbox(context)),
          );
        },
      ),
    );
  }
}

/// The base class for the different types of items the list can contain.
