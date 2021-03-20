import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Home_Control/Profile.dart';

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
        title: Text(
          "Home Control",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: OrientationBuilder(builder: (context, orientation) {
          int count = 2;
          if (orientation == Orientation.landscape) {
            count = 3;
          }
          return GridView.count(
            crossAxisCount: count,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text(
                    "Устройства",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text(
                    "Подписка",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text(
                    "Профиль",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Profile(this.login, this.password)));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text(
                    "Сценарии",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text(
                    "Служба поддержки",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
