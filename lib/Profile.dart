import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String login;
  String password;

  Profile(String login, String password) {
    this.login = login;
    this.password = password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Профиль",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset.zero,
                    blurRadius: 4.0,
                    spreadRadius: 0.0,
                  )
                ],
              ),
              child: ListView(
                children: [
                  Text("Логин: " + login),
                  Text("Пароль: " + password)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
