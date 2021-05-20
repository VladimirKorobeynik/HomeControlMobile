import 'package:flutter/material.dart';
import 'package:Home_Control/Parts/Block.dart';

//Main widget Profile
class Subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Підписка",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubscriptionHead("22.22.2021", "Місячна", true, 17),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SubscriptionBlock("Місячна підписка", 12312),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SubscriptionBlock("Піврічна підписка", 12312),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SubscriptionBlock("Річна підписка", 12312),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Скасувати підписку',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
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
    return Block(
      110,
      Padding(
        padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              subscriptionName,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              subscriptionPrice.toString() + "грн",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

//Subscription Head
class SubscriptionHead extends StatelessWidget {
  String limit;
  String type;
  bool status;
  String statusText;
  int daysLeft;

  SubscriptionHead(String lim, String type, bool status, int daysLeft) {
    this.limit = lim;
    this.type = type;
    this.status = status;
    this.statusText = (status) ? "Активна" : "Не активна";
    this.daysLeft = daysLeft;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Підписка до: $limit",
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Тип підписки: $type",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Статус підписки: $statusText",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Днів до завершення: $daysLeft  днів",
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
