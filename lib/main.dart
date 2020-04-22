import 'package:chat420/screens/login_screen.dart';
import 'package:chat420/screens/main_chat_screen.dart';
import 'package:chat420/screens/register_screen.dart';
import 'package:chat420/screens/user_chat_screen.dart';
import 'package:chat420/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        MainChatScreen.id: (context) => MainChatScreen(),
        PrivateChatScreen.id: (context) => PrivateChatScreen(),
      },
    );
  }
}
