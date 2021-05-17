import 'package:flutter/material.dart';
import 'package:Home_Control/Parts/Block.dart';

//Main widget Script
class ScriptEdit extends StatelessWidget {
  String editNameScript;

  ScriptEdit(String editName) {
    this.editNameScript = editName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${editNameScript}",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: ListView(),
      ),
    );
  }
}
