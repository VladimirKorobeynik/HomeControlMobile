import 'package:flutter/material.dart';

//Widget Block
class Block extends StatelessWidget {
  Padding elem;
  double heightBlock;

  Block(double heightBlock, Padding elem) {
    this.elem = elem;
    this.heightBlock = heightBlock;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightBlock,
      // constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
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
      margin: EdgeInsets.only(bottom: 20),
      child: elem,
    );
  }
}
