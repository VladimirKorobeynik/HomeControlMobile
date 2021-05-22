import 'package:Home_Control/Devices.dart';
import 'package:flutter/material.dart';
import 'package:Home_Control/AddDevice.dart';

//Кнопка добавления устройства
class AddButton extends StatelessWidget {
  int userID;
  String page;

  AddButton(int userID, String page) {
    this.userID = userID;
    this.page = page;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (this.page) {
          case 'AddDevice':
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddDevice(this.userID)));
            break;

          case 'AddScript':
            break;
        }
      },
      child: Container(
        width: 60,
        height: 60,
        child: Icon(
          Icons.add_rounded,
          color: Colors.teal,
          size: 40,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
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
      ),
    );
  }
}
