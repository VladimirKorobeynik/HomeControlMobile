import 'dart:math';

import 'package:Home_Control/AddDevice.dart';
import 'package:Home_Control/Entity/UserDevice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Home_Control/Parts/Block.dart';
import 'package:Home_Control/Parts/Switch.dart';
import 'package:Home_Control/Parts/AddButton.dart';
import 'package:Home_Control/Actions/SlidableWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//Main Devices widget
class Devices extends StatelessWidget {
  int userID;

  Devices(int userID) {
    this.userID = userID;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Пристрої",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListSidableWidget(userID),
    );
  }
}

class DeviceBlock extends StatefulWidget {
  String deviceImage;
  String deviceName;
  String deviceType;
  bool deviceStatus;
  bool deviceState;

  bool activeMore = false;
  UserDevice obj;

  DeviceBlock(String deviceImage, String deviceName, String deviceType,
      bool deviceStatus, bool deviceState, UserDevice obj) {
    this.deviceImage = deviceImage;
    this.deviceName = deviceName;
    this.deviceType = deviceType;
    this.deviceStatus = deviceStatus;
    this.deviceState = deviceState;
    this.obj = obj;
  }

  _DeviceBlockState createState() => _DeviceBlockState(
        deviceImage,
        deviceName,
        deviceType,
        deviceStatus,
        deviceState,
        activeMore,
        obj,
      );
}

//Device Block widget
class _DeviceBlockState extends State<DeviceBlock> {
  String deviceImage;
  String deviceName;
  String deviceType;
  bool deviceStatus;
  bool deviceState;

  bool activeMore;
  UserDevice obj;

  _DeviceBlockState(String deviceImage, String deviceName, String deviceType,
      bool deviceStatus, bool deviceState, bool activeMore, UserDevice obj) {
    this.deviceImage = deviceImage;
    this.deviceName = deviceName;
    this.deviceType = deviceType;
    this.deviceStatus = deviceStatus;
    this.deviceState = deviceState;
    this.activeMore = activeMore;
    this.obj = obj;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          this.activeMore = (activeMore) ? false : true;
        });
      },
      child: Block(
        null,
        Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/images/LightBuble.png"),
                        height: 80,
                        width: 80,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Назва: ",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Тип: ",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Статус: ",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Стан: ",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    deviceName,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    deviceType,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (deviceStatus)
                                          ? Color.fromRGBO(20, 255, 0, 1.0)
                                          : Color.fromRGBO(255, 230, 0, 1.0),
                                    ),
                                    margin: EdgeInsets.only(right: 5),
                                  ),
                                  Text(
                                    (deviceStatus)
                                        ? "Готов к работе"
                                        : "Не готов к работе",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    (deviceState) ? "Включен" : "Выключен",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Вкл",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CupertinoSwitchWidget(),
                          Text(
                            "Выкл",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DeviceFunctions(activeMore, obj),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//List slidable widget
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
  bool reload = false;

  _DismissibleListState(int userID) {
    this.userID = userID;
  }

  @override
  Widget build(BuildContext context) {
    // the list of elements
    return FutureBuilder(
      future: getUserDevices(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(snapshot.data);
        if (snapshot.data == null) {
          return Container(
            child: Center(child: Text("Загрузка устройств ...")),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              if (index != snapshot.data.length - 1) {
                UserDevice item = snapshot.data[index];
                return SlidableWidget(
                  child: DeviceBlock(item.image, item.name, item.type,
                      item.isActivated, false, item),
                  onDismissed: (action) {
                    setState(
                      () {
                        snapshot.data.removeAt(index);
                        deleteDevice(item.userDeviceID);
                      },
                    );
                  },
                );
              }
              return GestureDetector(
                onTap: () async {
                  await Navigator.of(context)
                      .push(new MaterialPageRoute(
                          builder: (context) => AddDevice(this.userID)))
                      .then((value) => (value)
                          ? setState(() {
                              this.reload = !reload;
                            })
                          : null);
                  print(this.reload);
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
            },
            padding:
                (EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 30)),
          );
        }
      },
    );
  }

//delete devices
  void deleteDevice(int deviceID) async {
    var response = await http.post(
      "http://192.168.0.101/mobileWeb/UserDevices.php",
      body: jsonEncode({
        "deleteOpearation": true,
        "deviceID": deviceID,
        "userID": this.userID
      }),
      headers: {"content-type": "application/json"},
    );
    // print("Status: ${response.statusCode}");
  }

  //Get user devices
  Future<List> getUserDevices() async {
    var arrDevices = await sendData(
        "http://192.168.0.101/mobileWeb/UserDevices.php",
        {"userID": this.userID});

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
        obj.arrFunc =
            arrDevices[i][arrDevices[i].length - 1].toString().split(",");
      }
      devices.add(obj);
    }
    devices.add(null);

    this.reload = false;

    return devices;
  }

  //Sending post query
  Future<List> sendData(url, data) async {
    try {
      var response = await http.post(
        url,
        body: jsonEncode(data),
        headers: {"content-type": "application/json"},
      );
      // print("Status: ${response.statusCode}");
      // print(response.body);
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

//More Function Widget
class DeviceFunctions extends StatelessWidget {
  bool active;
  List listFunction;

  DeviceFunctions(bool active, UserDevice obj) {
    this.active = active;
    this.listFunction = obj.arrFunc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (listFunction.length != 0)
          ? (active)
              ? (53.0 * listFunction.length)
              : 0
          : (active)
              ? (53.0)
              : 0,
      padding: EdgeInsets.only(top: 15),
      child: checkFunctionList(),
    );
  }

  Widget checkFunctionList() {
    if (listFunction.isNotEmpty) {
      return Column(
          children: listFunction.map((item) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 230,
              child: ElevatedButton(
                child: Padding(
                  child: Text(item),
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
                onPressed: () {
                  // changeState();
                  print(item);
                },
              ),
            ),
          ],
        );
      }).toList());
    } else {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Функции для устройства отсутствуют",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      );
    }
  }
}
