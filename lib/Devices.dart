import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Home_Control/Parts/Block.dart';
import 'package:Home_Control/Parts/Switch.dart';
import 'package:Home_Control/AddDevice.dart';

//Блоки с устройствами
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
          children: <Widget>[
            Block(
              140,
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/LogoProfile.png"),
                            height: 80,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Найменування: ",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
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
                          Row(
                            children: <Widget>[
                              Text("Вкл",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  )),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Block(
              140,
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/LogoProfile.png"),
                            height: 80,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Найменування: ",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
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
                          Row(
                            children: <Widget>[
                              Text("Вкл",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  )),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Block(
              140,
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/LogoProfile.png"),
                            height: 80,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Найменування: ",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
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
                          Row(
                            children: <Widget>[
                              Text("Вкл",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  )),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Block(
              140,
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/LogoProfile.png"),
                            height: 80,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Найменування: ",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
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
                          Row(
                            children: <Widget>[
                              Text("Вкл",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  )),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AddButton(),
          ],
        ),
      ),
    );
  }
}

//Кнопка добавления устройства
class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddDevice()));
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
