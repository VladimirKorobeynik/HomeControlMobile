import 'dart:convert';

import 'package:Home_Control/Actions/SlidableWidget.dart';
import 'package:Home_Control/AddDevice.dart';
import 'package:Home_Control/AddScript.dart';
import 'package:Home_Control/Entity/Setting.dart';
import 'package:Home_Control/Entity/UserDevice.dart';
import 'package:Home_Control/Entity/UserScript.dart';
import 'package:flutter/material.dart';
import 'package:Home_Control/Parts/Block.dart';
import 'package:Home_Control/ScriptEdit.dart';
import 'package:Home_Control/Parts/AddButton.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

//Main widget Script
class Script extends StatelessWidget {
  int userID;
  Script(int userID) {
    this.userID = userID;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Сценарії",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListSidableWidget(userID),
    );
  }
}

//Script widget
class ScriptBlock extends StatelessWidget {
  String name;
  String timeInterval;
  String imagePath;

  ScriptBlock(
    String name,
    String timeInterval,
  ) {
    this.name = name;
    this.timeInterval = timeInterval;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onLongPress: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ScriptEdit(this.name)));
      },
      child: Block(
        140,
        Padding(
          padding: EdgeInsets.only(),
          child: Container(
            height: 140,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.cyan,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      timeInterval,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListSidableWidget extends StatefulWidget {
  int userID;
  ListSidableWidget(int userID) {
    this.userID = userID;
  }
  @override
  _DismissibleListState createState() => _DismissibleListState(userID);
}

class _DismissibleListState extends State<ListSidableWidget> {
  int userID;

  _DismissibleListState(int userID) {
    this.userID = userID;
  }

  List<UserDevice> userDevice;

  bool reload = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getUserScripts(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(snapshot.data);
        if (snapshot.data == null) {
          return Container(
            child: Center(child: Text("Загрузка сценариев ...")),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              if (index != snapshot.data.length - 1) {
                UserScript item = snapshot.data[index];
                return SlidableWidget(
                  child: ScriptBlock(
                      item.name, '${item.startTime} - ${item.endTime}'),
                  onDismissed: (action) {
                    setState(
                      () {
                        snapshot.data.removeAt(index);
                        // deleteDevice(item.userDeviceID);
                      },
                    );
                  },
                );
              }
              if (snapshot.data.length == 1) {
                return Column(
                  children: [
                    Container(
                      height: 80,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: Color.fromRGBO(217, 218, 162, 1.0),
                        ),
                        color: Color.fromRGBO(254, 255, 214, 1.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 20, left: 20, bottom: 10),
                            child: Text(
                              "У вас пока что нет сценариев",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    getAddBtn(userDevice),
                  ],
                );
              }
              return getAddBtn(userDevice);
            },
            padding:
                (EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 30)),
          );
        }
      },
    );
  }

  Widget getAddBtn(List<UserDevice> devices) {
    return GestureDetector(
      onTap: () async {
        await Navigator.of(context)
            .push(new MaterialPageRoute(
                builder: (context) => AddScript(this.userID, devices)))
            .then((value) => (value)
                ? setState(() {
                    this.reload = !reload;
                  })
                : null);
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

  // void dismissSlidableItem(
  //     BuildContext context, int index, SlidableActions actions) {
  //   setState(() {
  //     items.removeAt(index);
  //     print(items.length);
  //   });
  // }

  Future<List> getUserScripts() async {
    //Get user's devices info
    var arrDevices = await sendData(
        "http://192.168.0.101/mobileWeb/UserScripts.php",
        {"getDeviceOperation": true, "userID": this.userID});

    List<UserDevice> devices = [];
    for (var i = 0; i <= arrDevices.length - 1; i++) {
      int deviceID = int.parse(arrDevices[i][0]);
      UserDevice obj = new UserDevice(
          int.parse(arrDevices[i][0]),
          int.parse(arrDevices[i][2]),
          arrDevices[i][7],
          arrDevices[i][8],
          arrDevices[i][3],
          (int.parse(arrDevices[i][4]) == 1) ? true : false,
          arrDevices[i][5],
          arrDevices[i][6]);
      if (arrDevices[i][arrDevices[i].length - 1] != null) {
        List arrFuncPair =
            arrDevices[i][arrDevices[i].length - 1].toString().split(",");
        for (var i = 0; i < arrFuncPair.length; i++) {
          obj.arrFunc.add(arrFuncPair[i].toString().split(":"));
        }
        // print(obj.arrFunc);
      }
      devices.add(obj);
    }

    userDevice = devices;

    //Get user's script info
    var arrScripts = await sendData(
        "http://192.168.0.101/mobileWeb/UserScripts.php",
        {"userID": this.userID});
    List<UserScript> scripts = [];

    for (var i = 0; i < arrScripts.length; i++) {
      int scriptID = int.parse(arrScripts[i][0]);
      var obj = new UserScript(scriptID, arrScripts[i][1]);
      for (var k = i; k < arrScripts.length; k++) {
        if (scriptID == int.parse(arrScripts[k][0])) {
          obj.scriptSettings.add(Setting(
            int.parse(arrScripts[k][2]),
            int.parse(arrScripts[k][3]),
            int.parse(arrScripts[k][4]),
            arrScripts[k][5],
            arrScripts[k][6],
          ));
          for (var j = 0; j < devices.length; j++) {
            if (int.parse(arrScripts[k][4]) == devices[j].userDeviceID) {
              obj.userDevices.add(devices[j]);
            }
          }
          i = k;
        }
      }

      //Sorting script setting by time
      obj.scriptSettings.sort((a, b) {
        return a.startTimeFunc.compareTo(b.startTimeFunc);
      });

      //Defining script time interval
      obj.startTime = obj.scriptSettings[0].startTimeFunc;
      obj.endTime =
          obj.scriptSettings[obj.scriptSettings.length - 1].endTimeFunc;

      scripts.add(obj);
    }
    scripts.add(null);

    return scripts;
  }

  Future<List> sendData(url, data) async {
    try {
      var response = await http.post(
        url,
        body: jsonEncode(data),
        headers: {"content-type": "application/json"},
      );
      List<dynamic> userData;
      if (response.body != null) {
        userData = json.decode(response.body);
      }
      return userData;
    } catch (error) {
      print(error);
    }
  }
}
