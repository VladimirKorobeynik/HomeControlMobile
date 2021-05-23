import 'package:Home_Control/Entity/UserDevice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddScript extends StatelessWidget {
  int userID;
  List<UserDevice> userDevices = [];

  AddScript(int userID, List<UserDevice> userDevice) {
    this.userID = userID;
    this.userDevices = userDevice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Додавання пристрою",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(),
    );
  }
}
