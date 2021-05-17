import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Home_Control/Parts/Block.dart';
import 'package:Home_Control/Parts/Switch.dart';
import 'package:Home_Control/Parts/AddButton.dart';

//Блоки с устройствами
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
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
          children: <Widget>[
            // Block(
            //   140,
            //   Padding(
            //     padding:
            //         EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         Container(
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage("assets/images/LogoProfile.png"),
            //                 height: 80,
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           width: 140,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Найменування: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                     textAlign: TextAlign.left,
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Тип: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Статус: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Стан: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: <Widget>[
            //                   Text("Вкл",
            //                       style: TextStyle(
            //                         color: Colors.grey[600],
            //                         fontSize: 13,
            //                         fontWeight: FontWeight.bold,
            //                       )),
            //                   CupertinoSwitchWidget(),
            //                   Text(
            //                     "Выкл",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Block(
            //   140,
            //   Padding(
            //     padding:
            //         EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         Container(
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage("assets/images/LogoProfile.png"),
            //                 height: 80,
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           width: 140,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Найменування: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                     textAlign: TextAlign.left,
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Тип: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Статус: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     "Стан: ",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Row(
            //                 children: <Widget>[
            //                   Text("Вкл",
            //                       style: TextStyle(
            //                         color: Colors.grey[600],
            //                         fontSize: 13,
            //                         fontWeight: FontWeight.bold,
            //                       )),
            //                   CupertinoSwitchWidget(),
            //                   Text(
            //                     "Выкл",
            //                     style: TextStyle(
            //                       color: Colors.grey[600],
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
