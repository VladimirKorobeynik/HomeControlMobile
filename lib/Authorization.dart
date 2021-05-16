import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Home_Control/Registration.dart';
import 'package:Home_Control/MainMenu.dart';

// ignore: must_be_immutable
class Authorization extends StatelessWidget {
  var login;
  var password;

  List data = [];

  final TextEditingController loginController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

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
                controller: loginController,
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
                controller: passwordController,
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
                onPressed: () {
                  this.getDataAuthorization(
                      login: this.loginController.text,
                      password: this.passwordController.text);

                  if (this.login.toString().trim() != "" &&
                      this.password.toString().trim() != "") {
                    //Отправка запроса на данные пользователей
                    // this.fetchData();

                    // for (var i = 0; i < data.length; i++) {
                    //   if (data[i]["login"].toString() == this.login.trim() &&
                    //       data[i]["password"].toString() ==
                    //           this.password.trim()) {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) =>
                    //                 MainMenu(this.login, this.password)));

                    //     this.loginController.clear();
                    //     this.passwordController.clear();
                    //     break;
                    //   }
                    //   if (i == data.length - 1) {
                    //     _showCupertinoDialog(context, "Ошибка Авторизации",
                    //         "Такого пользователя не существует!");
                    //   }
                    // }

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MainMenu(this.login, this.password)));
                  } else {
                    _showCupertinoDialog(
                        context, "Ошибка", "Заполните пожалуйста все поля :)");
                  }
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registration()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

//Метод для получения данных авторизации
  void getDataAuthorization({String login, String password}) {
    this.login = login;
    this.password = password;
  }

//Диалоговое окно ошибки
  _showCupertinoDialog(context, String titl, String cont) {
    showDialog(
        context: context,
        builder: (_) => new CupertinoAlertDialog(
              title: new Text(titl),
              content: new Text(cont),
              actions: <Widget>[
                FlatButton(
                  child: Text('Закрыть'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }

//Отправка запроса на получениие данных
  void fetchData() async {
    final response =
        await http.get('http://192.168.0.100:8888/web/mobileAuthorization.php');

    if (response.statusCode == 200) {
      data = json.decode(response.body);
    }
  }
}
