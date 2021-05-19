import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Home_Control/Parts/Block.dart';
import 'package:Home_Control/Parts/Switch.dart';
import 'package:Home_Control/Parts/AddButton.dart';
import 'package:Home_Control/Actions/SlidableWidget.dart';

//Main Devices widget
class Devices extends StatelessWidget {
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
      body: ListSidableWidget(),
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

  DeviceBlock(String deviceImage, String deviceName, String deviceType,
      bool deviceStatus, bool deviceState) {
    this.deviceImage = deviceImage;
    this.deviceName = deviceName;
    this.deviceType = deviceType;
    this.deviceStatus = deviceStatus;
    this.deviceState = deviceState;
  }

  _DeviceBlockState createState() => _DeviceBlockState(deviceImage, deviceName,
      deviceType, deviceStatus, deviceState, activeMore);
}

//Device Block widget
class _DeviceBlockState extends State<DeviceBlock> {
  String deviceImage;
  String deviceName;
  String deviceType;
  bool deviceStatus;
  bool deviceState;

  bool activeMore;

  _DeviceBlockState(String deviceImage, String deviceName, String deviceType,
      bool deviceStatus, bool deviceState, bool activeMore) {
    this.deviceImage = deviceImage;
    this.deviceName = deviceName;
    this.deviceType = deviceType;
    this.deviceStatus = deviceStatus;
    this.deviceState = deviceState;
    this.activeMore = activeMore;
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
                        image: AssetImage(deviceImage),
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
                  DeviceFunctions(activeMore),
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
  @override
  _DismissibleListState createState() => _DismissibleListState();
}

class _DismissibleListState extends State<ListSidableWidget> {
  List<Widget> items = [
    DeviceBlock("assets/images/LightBuble.png", "Лампочка", "Умное устройство",
        true, false),
    DeviceBlock("assets/images/rosette.png", "Розетка", "Умное устройство",
        false, false),
    DeviceBlock("assets/images/thermometer.png", "Градусник",
        "Умное устройство", true, false),
    DeviceBlock(
        "assets/images/lock.png", "Замок", "Умное устройство", true, false),
    null
  ];

  @override
  Widget build(BuildContext context) {
    // the list of elements
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        if (index != items.length - 1) {
          final item = items[index];
          return SlidableWidget(
            child: item,
            onDismissed: (action) =>
                dismissSlidableItem(context, index, action),
          );
        }
        return AddButton();
      },
      padding: (EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 30)),
    );
  }

  void dismissSlidableItem(
      BuildContext context, int index, SlidableActions actions) {
    setState(() {
      items.removeAt(index);
      // print(items.length);
    });
  }
}

//More Function Widget
class DeviceFunctions extends StatelessWidget {
  List<String> listFunction = ["Функция 1", "Функция 2", "Функция 3"];
  bool active;

  DeviceFunctions(bool active) {
    this.active = active;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (active) ? (53.0 * listFunction.length) : 0,
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: listFunction
            .map(
              (item) => new ElevatedButton(
                child: Padding(
                  child: Text(item),
                  padding: EdgeInsets.only(left: 80, right: 80),
                ),
                onPressed: () {
                  // changeState();
                  print(item);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
