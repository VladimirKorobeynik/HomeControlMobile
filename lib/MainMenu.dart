import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Control"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Text("Главное меню"),
      ),
    );
  }
}
