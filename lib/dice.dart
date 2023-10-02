import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key, });

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice App"),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(list[index%list.length], width: 50.0,height:150.0 ,),
                  TextButton(onPressed: (){
                    index++;
                    setState(() {

                    });
                  }, child: const Text("click"))
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(list[Sindex%list.length], width: 50.0,height:150.0 ,),
                  TextButton(onPressed: (){
                    Sindex++;
                    setState(() {
                      
                    });
                  }, child: const Text("click"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  var list = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.jpg',
    'assets/5.png',
    'assets/6.png',
  ];

  var index = 0;
  var Sindex = 0;
}
