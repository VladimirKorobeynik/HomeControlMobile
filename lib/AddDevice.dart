import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddDevice extends StatelessWidget {
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
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AddDeviceInput("Название", "Введите название"),
            AddDeviceInput("Код устройства", "Введите код устройства"),
            CodeButton(),
          ],
        ),
      ),
    );
  }
}

class AddDeviceInput extends StatelessWidget {
  String name;
  String inputName;

  AddDeviceInput(String name, String inputName) {
    this.name = name;
    this.inputName = inputName;
  }

  final TextEditingController loginController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, bottom: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Row(
              children: [
                Text(
                  name,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: inputName,
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: loginController,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: Icon(
        Icons.qr_code,
        color: Colors.teal,
        size: 40,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            offset: Offset.zero,
            blurRadius: 2.0,
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
