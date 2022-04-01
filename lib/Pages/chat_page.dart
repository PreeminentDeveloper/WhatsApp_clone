import 'package:WhatsApp_clone/CustomUI/custom_card.dart';
import 'package:WhatsApp_clone/Models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "NYSC Batch A, Stream2",
        isGroup: true,
        currentMessage: "Callup letter is out.",
        time: "1:00AM",
        icon: "assets/groups.svg"),
    ChatModel(
        name: "Sis. Nifemi",
        isGroup: false,
        currentMessage: "Good afternoon sir",
        time: "2:10PM",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Cionee",
        isGroup: false,
        currentMessage: "Babe watsup?",
        time: "4:05PM",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Sis. Gbemi",
        isGroup: false,
        currentMessage: "Thank you sir",
        time: "9:02AM",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Blood",
        isGroup: false,
        currentMessage: "Where are you?",
        time: "5:30PM",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Comp. Sci. 2017",
        isGroup: true,
        currentMessage: "Boss boss",
        time: "12:06PM",
        icon: "assets/groups.svg"),
    ChatModel(
        name: "Bro. Abraham",
        isGroup: false,
        currentMessage: "The guy is good",
        time: "12:30AM",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Bro. David",
        isGroup: false,
        currentMessage: "MOG",
        time: "12:05PM",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Nelson",
        isGroup: false,
        currentMessage: "Okay sir",
        time: "1:10PM",
        icon: "assets/person.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        // padding: EdgeInsets.symmetric(horizontal: 5),
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
