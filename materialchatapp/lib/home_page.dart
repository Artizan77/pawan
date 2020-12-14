import 'package:flutter/material.dart';
import 'package:materialchatapp/chat_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Chat App")), body: ChatScreen());
  }
}
