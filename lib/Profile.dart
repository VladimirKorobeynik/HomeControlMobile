import 'package:flutter/material.dart';

//Main widget Profile
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
        child: Column(
          children: <Widget>[
            ProfileHead(login),
            ProfileBody(password),
          ],
        ),
      ),
    );
  }
}

//Widget ProfileHead
class ProfileHead extends StatelessWidget {
  String login;

  ProfileHead(String login) {
    this.login = login;
  }

  @override
  Widget build(BuildContext context) {
    return Block(
      135,
      Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/LogoProfile.png"),
                    height: 80,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      login,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        "Имя",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Фамилия",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Отчество",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Widget ProfileBody
class ProfileBody extends StatelessWidget {
  String pass;

  ProfileBody(String pass) {
    this.pass = pass;
  }

  @override
  Widget build(BuildContext context) {
    return Block(
      380,
      Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            LineInfo(pass),
            LineInfo("Почта"),
            LineInfo("Номер телефона"),
            LineInfo("Адрес"),
          ],
        ),
      ),
    );
  }
}

//Widget Block
class Block extends StatelessWidget {
  Padding elem;
  double heightBlock;

  Block(double heightBlock, Padding elem) {
    this.elem = elem;
    this.heightBlock = heightBlock;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightBlock,
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
      margin: EdgeInsets.only(bottom: 20),
      child: elem,
    );
  }
}

//Widget LineInfo
class LineInfo extends StatelessWidget {
  String userInfo;

  LineInfo(String userInfo) {
    this.userInfo = userInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            userInfo,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
