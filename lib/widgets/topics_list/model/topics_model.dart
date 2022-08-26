import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicsModel {
  final List<ListItem> items = List<ListItem>.generate(
    100,
    (int i) => i % 6 == 0
        ? HeadingItem('Заглавная тема $i', i)
        : MessageItem('Субтема $i', 'участников $i', i),
  );
}

abstract class ListItem {
  /// The title line to show in a list item.
  void buildId(int id);

  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);

  Widget buildCheckbox(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;
  final int id;
  final RxBool _isCheckedHeading = false.obs;

  HeadingItem(this.heading, this.id);

  @override
  void buildId(int id) {
    print(id);
  }

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildCheckbox(BuildContext context) => Checkbox(
        // checkColor: Colors.white,
        // fillColor: MaterialStateProperty.resolveWith(getColor),
        onChanged: (bool? value) {
          _isCheckedHeading.value = value!;
          buildId(id);
        },
        value: _isCheckedHeading.value,
      );

  // @override
  // Widget buildCheckbox(BuildContext context) => Checkbox(
  //       // checkColor: Colors.white,
  //       // fillColor: MaterialStateProperty.resolveWith(getColor),
  //       onChanged: (bool? value) {
  //         _isCheckedHeading.value = value!;
  //       },
  //       value: _isCheckedHeading.value,
  //     );
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;
  final int id;
  final RxBool _isChecked = false.obs;

  MessageItem(this.sender, this.body, this.id);

  @override
  void buildId(int id) {
    print(id);
  }

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);

  @override
  Widget buildCheckbox(BuildContext context) => Checkbox(
        // checkColor: Colors.white,
        // fillColor: MaterialStateProperty.resolveWith(getColor),
        onChanged: (bool? value) {
          _isChecked.value = value!;
          buildId(id);
        },
        value: _isChecked.value,
      );
}
