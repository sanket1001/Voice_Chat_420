import 'package:flutter/material.dart';
import 'package:chat420/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PrivateChatScreen extends StatefulWidget {
  static const String id = 'privateChatScreen';

  @override
  _PrivateChatScreenState createState() => _PrivateChatScreenState();
}

class _PrivateChatScreenState extends State<PrivateChatScreen> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;
  String messageText;
  String currentUser = "User_ID";

  final _textEditorController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        setState(() {
          currentUser = loggedInUser.email;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: null,
        title: Text(currentUser),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.cancel,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'this is samlpe text',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      controller: _textEditorController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      _textEditorController.clear();
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
