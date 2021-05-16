import 'package:flutter/material.dart';
import 'package:Home_Control/Parts/Block.dart';

//Main widget Profile
class Devices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Устройства",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
