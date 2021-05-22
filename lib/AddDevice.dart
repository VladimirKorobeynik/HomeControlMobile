import 'package:Home_Control/Services/Connect.dart';
import 'package:Home_Control/Devices.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddDevice extends StatelessWidget {
  String deviceName;
  String activationKey;
  int userID;

  AddDevice(int userID) {
    this.userID = userID;
  }

  final TextEditingController deviceNameController =
      new TextEditingController();
  final TextEditingController activationKeyController =
      new TextEditingController();

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
                AddDeviceInput("Назва", "Введіть назву", deviceNameController),
                AddDeviceInput("Код пристрою", "Введіть код пристрою",
                    activationKeyController),
                CodeButton(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Padding(
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      "Додати",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    this.getDataDevice(
                        name: this.deviceNameController.text,
                        key: this.activationKeyController.text);

                    if (this.deviceName.toString().trim() != "" &&
                        this.activationKey.toString().trim() != "") {
                      print(deviceName);
                      print(activationKey);
                      Connect connect = new Connect();
                      var deviceData = {
                        "addOperation": true,
                        "userID": this.userID,
                        "name": this.deviceName,
                        "deviceKey": this.activationKey,
                      };

                      connect.startMethod(
                          "http://192.168.0.101/mobileWeb/UserDevices.php",
                          deviceData);

                      Navigator.pop(context, true);
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void getDataDevice({String name, String key}) {
    this.deviceName = name;
    this.activationKey = key;
  }
}

class AddDeviceInput extends StatelessWidget {
  String name;
  String inputName;

  TextEditingController controller;

  AddDeviceInput(
      String name, String inputName, TextEditingController controller) {
    this.name = name;
    this.inputName = inputName;
    this.controller = controller;
  }

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
                controller: controller,
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
