import 'package:Home_Control/Entity/User.dart';
import 'package:Home_Control/MainMenu.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  String login;
  String password;
  User userAccount;

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
                "Реєстрація",
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
                  hintText: "Ім'я",
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
                  hintText: "Прізвище",
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
                  hintText: "По батькові",
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
                  hintText: "Номер телефону",
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
                  hintText: "Адреса",
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
                  hintText: "Пошта",
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
                  hintText: "Дата нарождення",
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
                  hintText: "Логін",
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
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text("Зареєструватися"),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 15, bottom: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () => {
                  userAccount = new User(
                      1,
                      1,
                      1,
                      "fullname",
                      'name',
                      "patronymic",
                      "number",
                      "address",
                      "email",
                      "birthday",
                      "login",
                      "registrationDate",
                      true,
                      true),
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainMenu(userAccount),
                    ),
                  ),
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
