import 'package:Home_Control/MainMenu.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  String login;
  String password;

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
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                "Регистрация",
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
                  hintText: "Имя",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Фамилия",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Отчество",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Номер телефона",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Адрес",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Почта",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Дата рождения",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Логин",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Пароль",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: RaisedButton(
                child: Text("Зарегестрироваться"),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 15, bottom: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MainMenu(this.login, this.password)))
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
