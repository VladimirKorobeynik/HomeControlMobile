import 'package:flutter/material.dart';

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
          editNameScript,
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
