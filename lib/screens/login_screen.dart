import 'package:chat420/constants.dart';
import 'package:chat420/screens/main_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat420/components/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  String username;
  String password;
  static const String id = 'loginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.audiotrack,
                      size: 75.0,
                    ),
                    Text(
                      'Chat 420',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                style: kTextFieldStyle,
                onChanged: (newValue) {
                  username = newValue;
                },
                decoration: kTextFieldDecoration,
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                style: kTextFieldStyle,
                onChanged: (newValue) {
                  password = newValue;
                },
                decoration:
                    kTextFieldDecoration.copyWith(labelText: 'Password'),
              ),
              SizedBox(
                height: 10.0,
              ),
              RoundedButton(
                buttonColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, MainChatScreen.id);
                },
                text: 'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
