import 'package:Home_Control/Actions/SlidableWidget.dart';
import 'package:flutter/material.dart';
import 'package:Home_Control/Parts/Block.dart';
import 'package:Home_Control/ScriptEdit.dart';
import 'package:Home_Control/Parts/AddButton.dart';
import 'package:Home_Control/Actions/SlidableWidget.dart';

//Main widget Script
class Script extends StatelessWidget {
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
      body: ListSidableWidget(),
    );
  }
}

//Script widget
class ScriptBlock extends StatelessWidget {
  String name;
  String timeInterval;
  String imagePath;

  ScriptBlock(String name, String timeInterval, String imagePath) {
    this.name = name;
    this.timeInterval = timeInterval;
    this.imagePath = imagePath;
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
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${name}",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${timeInterval}",
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
  @override
  _DismissibleListState createState() => _DismissibleListState();
}

class _DismissibleListState extends State<ListSidableWidget> {
  List<Widget> items = [
    ScriptBlock(
        "Вечір", "22:00-23:00", 'assets/ScriptsImage/backgroundScript1.jpeg'),
    ScriptBlock(
        "Ніч", "22:00-23:00", 'assets/ScriptsImage/backgroundScript2.jpeg'),
    ScriptBlock(
        "Вечір", "22:00-23:00", 'assets/ScriptsImage/backgroundScript1.jpeg'),
    ScriptBlock(
        "Вечір", "22:00-23:00", 'assets/ScriptsImage/backgroundScript1.jpeg'),
    null
  ];

  @override
  Widget build(BuildContext context) {
    // the list of elements
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        if (index != items.length - 1) {
          // print(listLength);
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
      print(items.length);
    });
  }
}
