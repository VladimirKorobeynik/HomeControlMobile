import 'dart:convert';
import 'package:Home_Control/Entity/User.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Home_Control/Registration.dart';
import 'package:Home_Control/MainMenu.dart';

class Authorization extends StatefulWidget {
  @override
  AuthorizationState createState() => AuthorizationState();
}

// ignore: must_be_immutable
class AuthorizationState extends State<Authorization> {
  var login;
  var password;

  List data = [];
  Map userData;

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
                "Авторизація",
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
                  hintText: "Ваш логін",
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
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text("Вхід"),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 15, bottom: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () async {
                  this.getDataAuthorization(
                      login: this.loginController.text,
                      password: this.passwordController.text);

                  if (this.login.toString().trim() != "" &&
                      this.password.toString().trim() != "") {
                    var data = {
                      'login': login.trim(),
                      'password': password.trim(),
                    };

                    userData = await startMethod(
                        'http://192.168.0.101/mobileWeb/mobileAuthorization.php',
                        data);

                    if (userData != null) {
                      print(userData);
                      User userAccount = new User(
                        int.parse(userData["user_id"]),
                        int.parse(userData["role_id"]),
                        int.parse(userData["subscription_id"]),
                        userData["fullname"],
                        userData["name"],
                        userData["patronymic"],
                        userData["number"],
                        userData["address"],
                        userData["email"],
                        userData["birthday"],
                        userData["login"],
                        userData["registration_date"],
                        (userData["is_active"] == "1") ? true : false,
                        (userData["is_active_subscription"] == "1")
                            ? true
                            : false,
                      );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainMenu(userAccount)));

                      this.userData = null;

                      this.loginController.clear();
                      this.passwordController.clear();
                    } else {
                      _showCupertinoDialog(context, "Ошибка Авторизации",
                          "Такого пользователя не существует!");
                    }
                  } else {
                    _showCupertinoDialog(
                        context, "Помилка", "Заповніть будь ласка всі поля :)");
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text("Реєстрація"),
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
          TextButton(
            child: Text('Закрити'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }

//Отправка запроса на получениие данных
  void fetchData() async {
    final response = await http
        .get('https://192.168.0.101/mobileWeb/mobileAuthorization.php');

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
    }
  }

  Future<Map> sendData(url, data) async {
    try {
      var response = await http.post(
        url,
        body: jsonEncode(data),
        headers: {"content-type": "application/json"},
      );
      print("Status: ${response.statusCode}");
      print(response.body);
      if (response.body != null) {
        userData = json.decode(response.body);
      }
      return userData;
    } catch (error) {
      print(error);
    }
  }

  Future<Map> startMethod(url, data) async {
    return await this.sendData(url, data);
  }
}
