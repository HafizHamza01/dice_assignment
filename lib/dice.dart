import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  Dice({Key key, this.title}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  IconButton(
        onPressed: () {
          setState(() {
            index++;
          });
        },
        icon: Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              Image.asset(list[index]),
              Image.asset(list[index]),
            ],
          ),
        ),
      ),
    );
  }

  var list = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
  ];

  var index = 0;
}
