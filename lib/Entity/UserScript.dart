import 'package:Home_Control/Entity/Setting.dart';
import 'package:Home_Control/Entity/UserDevice.dart';

class UserScript {
  int scriptID;
  int userID;
  String name;
  String startTime;
  String endTime;
  List<UserDevice> userDevices = [];
  List<Setting> scriptSettings = [];

  UserScript(int scriptID, String name) {
    this.scriptID = scriptID;
    this.name = name;
  }
}
