import 'dart:math';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';
import 'package:organizer_app/widgets/chats_list/controller/chats_controller.dart';

class ChatsModel {
  final List<ListItem> items = List<ListItem>.generate(
    100,
    (int i) => MessageItem('Чат $i', 'последняя запись $i', i),
  );
}

abstract class ListItem {
  /// The title line to show in a list item.
  void buildId(int id);
  Widget buildAvatar(BuildContext context);
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;
  final int id;
  List<Color> colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = Random();
  late int randomNumber; //

  MessageItem(this.sender, this.body, this.id);

  @override
  void buildId(int id) {
    print(id);
  }

  @override
  Widget buildAvatar(BuildContext context) => GFIconBadge(
        position: GFBadgePosition.bottomEnd(),
        counterChild: GFBadge(
          shape: GFBadgeShape.circle,
          size: 30.0,
          color: colors[random.nextInt(2)], // from 0 upto 99 included,
          child: Text(random.nextInt(25).toString()),
        ),
        child: GFIconButton(
          type: GFButtonType.transparent,
          shape: GFIconButtonShape.circle,

          onPressed: () => GetToNamed().getToNamed,
          icon: Icon(
            Icons.account_circle,
            size: 50,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
          // type: GFType.outline,
        ),
      );

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
