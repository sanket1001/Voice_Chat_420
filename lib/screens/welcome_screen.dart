import 'package:flutter/material.dart';
import 'package:chat420/components/rounded_button.dart';
import 'package:chat420/screens/login_screen.dart';
import 'package:chat420/screens/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
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
              RoundedButton(
                buttonColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                text: 'Sign In',
              ),
              RoundedButton(
                buttonColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.id);
                },
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
