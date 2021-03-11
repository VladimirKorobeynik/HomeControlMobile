import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  String login;
  String password;

  MainMenu(String login, String password) {
    this.login = login;
    this.password = password;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Control"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: ListView(
          children: [
            Text("Главное меню"),
            Text(login),
            Text(password),
          ],
        ),
      ),
    );
  }
}
