import 'package:Home_Control/Authorization.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomeControl());

class HomeControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Control',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Authorization(),
    );
  }
}
