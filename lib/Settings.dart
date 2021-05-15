import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Main Settings widget
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Настройки",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40, bottom: 40),
        child: Column(
          children: <Widget>[SettingsContent()],
        ),
      ),
    );
  }
}

//Main Settings Content widget
class SettingsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SettingsLine("Тема"),
          SettingsLine("Оповещения"),
          SettingsLine("Звук"),
          SettingsLine("Настройка"),
          SettingsLine("Настройка"),
        ],
      ),
    );
  }
}

//Main Settings Line widget
class SettingsLine extends StatelessWidget {
  String settingName;
  var _lights = false;

  SettingsLine(String settingName) {
    this.settingName = settingName;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border(
          top: BorderSide(color: Colors.grey[400], width: 2),
          bottom: BorderSide(color: Colors.grey[400], width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            settingName,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          CupertinoSwitchWidget(),
        ],
      ),
    );
  }
}

class CupertinoSwitchWidget extends StatefulWidget {
  @override
  _CupertinoSwitchWidgetState createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  var _lights = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoSwitch(
        value: _lights,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
        },
      ),
    );
  }
}
