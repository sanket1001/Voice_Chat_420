import 'package:flutter/material.dart';

class MainChatScreen extends StatelessWidget {
  static const String id = 'mainChatScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.account_circle,
          color: Colors.black,
        ),
        title: Text(
          '<User_name>',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
