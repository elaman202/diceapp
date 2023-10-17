import 'dart:math';

import 'package:diceapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 3;
  int rightDice = 2;
  void ozgort() {
    Random ozgormo = Random();
    setState(() {
      leftDice = ozgormo.nextInt(6);
      rightDice = ozgormo.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "DiceApp",
              style: TextStyle(fontSize: 30),
            ),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      ozgort();
                      // log('Basyldy jatat===>>>');
                      //   leftDice = Random().nextInt(6) + 1;
                      //   rightDice = Random().nextInt(6) + 1;
                      //   setState(() {});
                    },
                    child: Image.asset(
                        'assets/images/photo-${leftDice == 0 ? leftDice + 1 : leftDice}.png')),
                InkWell(
                    onTap: () {
                      ozgort();
                      // setState(() {});
                      // rightDice = Random().nextInt(6) + 1;
                      // leftDice = Random().nextInt(6) + 1;
                    },
                    child: Image.asset(
                        'assets/images/photo-${rightDice == 0 ? rightDice + 1 : rightDice}.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
