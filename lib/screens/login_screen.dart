import 'package:chat420/constants.dart';
import 'package:chat420/screens/main_chat_screen.dart';
import 'package:chat420/screens/user_chat_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chat420/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  String username;

  String password;

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
                cursorColor: Colors.black,
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
                cursorColor: Colors.black,
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
                onTap: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: username, password: password);
                    print(user);
                    if (user != null) {
                      Navigator.pushNamed(context, PrivateChatScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
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
