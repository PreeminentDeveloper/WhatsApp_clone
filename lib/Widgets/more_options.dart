import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        onSelected: (value) => (print(value)),
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: Text("New group"),
              value: "New group",
            ),
            PopupMenuItem(
              child: Text("New broadcast"),
              value: "New broadcast",
            ),
            PopupMenuItem(
              child: Text("WhatsApp Web"),
              value: "WhatsApp Web",
            ),
            PopupMenuItem(
              child: Text("Starred message"),
              value: "Starred message",
            ),
            PopupMenuItem(
              child: Text("Settings"),
              value: "Settings",
            ),
          ];
        });
  }
}
