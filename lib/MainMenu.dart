import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Home_Control/Profile.dart';
import 'package:Home_Control/Settings.dart';
import 'package:Home_Control/Subscription.dart';
import 'package:Home_Control/Devices.dart';
import 'package:Home_Control/Script.dart';
import 'package:Home_Control/Entity/User.dart';

class MainMenu extends StatelessWidget {
  User userAccount;

  MainMenu(User userAccount) {
    this.userAccount = userAccount;
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
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    "Пристрої",
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Devices()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    "Підписка",
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
                            builder: (context) => Subscription()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    "Профіль",
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
                            builder: (context) => Profile(userAccount)));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    "Сценарії",
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Script()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    "Служба підтримки",
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
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    "Налаштування",
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
