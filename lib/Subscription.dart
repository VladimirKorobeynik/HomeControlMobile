import 'package:flutter/material.dart';
import 'package:Home_Control/Parts/Block.dart';

//Main widget Profile
class Subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Подписки",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SubscriptionHead(),
              ],
            ),
            Row(
              children: [
                Column(
                  children: <Widget>[
                    SubscriptionBlock("Полугодовая подписка", 1900),
                    SubscriptionBlock("Годовая подписка", 3800),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Color.fromRGBO(170, 89, 55, 1.0),
                    child: const Text('Cancel'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Subscription block
class SubscriptionBlock extends StatelessWidget {
  String subscriptionName;
  int subscriptionPrice;

  SubscriptionBlock(String name, int price) {
    this.subscriptionName = name;
    this.subscriptionPrice = price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}

//Subscription Head
class SubscriptionHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                "Підписка до ",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Тип підписки: ",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Статус підписки: ",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Днів до завершення: ",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
