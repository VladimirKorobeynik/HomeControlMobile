import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddDevice extends StatelessWidget {
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
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddDeviceInput("Назва", "Введіть назву"),
                AddDeviceInput("Код пристрою", "Введіть код пристрою"),
                CodeButton(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      "Додати",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
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
      padding: EdgeInsets.only(bottom: 10),
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
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Icon(
          Icons.qr_code,
          color: Colors.teal,
          size: 40,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    );
  }
}
