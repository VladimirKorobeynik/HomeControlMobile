import 'package:flutter/material.dart';
import 'package:Home_Control/Registration.dart';
import 'package:Home_Control/MainMenu.dart';

class Authorization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        height: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Image(
              image: AssetImage("assets/images/LogoIcon.png"),
              height: 150,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                "Авторизация",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Ваш логин",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Ваш пароль",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                child: Text("Вход"),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 15, bottom: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainMenu()))
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: RaisedButton(
                child: Text("Регистрация"),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 15, bottom: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registration()))
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
