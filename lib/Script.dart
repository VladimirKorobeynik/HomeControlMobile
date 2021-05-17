import 'package:flutter/material.dart';
import 'package:Home_Control/Parts/Block.dart';
import 'package:Home_Control/ScriptEdit.dart';
import 'package:Home_Control/Parts/AddButton.dart';

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
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 30),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ScriptBlock("Вечір", "22:00-23:00",
                        'assets/ScriptsImage/backgroundScript1.jpeg'),
                    ScriptBlock("Ніч", "22:00-23:00",
                        'assets/ScriptsImage/backgroundScript2.jpeg'),
                    // ScriptBlock("Чил", "00:00-00:00", 'assets/ScriptsImage/backgroundScript3.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddButton(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
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

// class DismissibleList extends StatefulWidget {
//   @override
//   _DismissibleListState createState() => _DismissibleListState();
// }

// class _DismissibleListState extends State<DismissibleList> {
//   @override
//   Widget build(BuildContext context) {
//     var sampleList = {
//       '1': ScriptBlock(
//           "Вечір", "22:00-23:00", 'assets/ScriptsImage/backgroundScript1.jpeg'),
//       '2': ScriptBlock(
//           "Ніч", "22:00-23:00", 'assets/ScriptsImage/backgroundScript2.jpeg'),
//     }; // the list of elements
//     return ListView.builder(
//       itemCount: sampleList.length, //number of items on the list
//       itemBuilder: (BuildContext context, int index) {
//         return Dismissible(
//           key: Key(sampleList[
//               index]), //unique key string for each element (in this case each string is unique)
//           onDismissed: (direction) {},
//           child: Padding(
//             padding: EdgeInsets.all(16.0), // just to help the visual
//             child: Text('${sampleList[index]}'),
//           ),
//           background: Container(
//             color: Colors.red[400],
//             child: Text("Удалить", style: TextStyle(color: Colors.white)),
//           ), //what to display form the list
//         );
//       },
//     );
//   }
// }
