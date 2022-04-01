import 'package:WhatsApp_clone/Models/chat_model.dart';
import 'package:WhatsApp_clone/Screens/individual_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final ChatModel chatModel;
  CustomCard({this.chatModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    IndividualPage(chatModel: chatModel)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: SvgPicture.asset(
                chatModel.icon,
                color: Colors.white,
                height: 28,
                width: 28,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            trailing: Text(chatModel.time),
            title: Text(
              chatModel.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.done_all,
                      size: 16,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(chatModel.currentMessage,
                        style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 90),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
