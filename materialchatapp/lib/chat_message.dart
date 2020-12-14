import 'package:flutter/material.dart';

const String _name = "Ahmet";

class ChatMessage extends StatelessWidget {
  final String text;

  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text(
                _name[0],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name, style: Theme.of(context).textTheme.bodyText1),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
