// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = const AssetImage("images/one.png");
  AssetImage two = const AssetImage("images/two.png");
  AssetImage three = const AssetImage("images/three.png");
  AssetImage four = const AssetImage("images/four.png");
  AssetImage five = const AssetImage("images/five.png");
  AssetImage six = const AssetImage("images/six.png");

  late AssetImage diceimage;
  late AssetImage newImage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceimage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: diceimage,
              width: 200.0,
              height: 200.0,
            ),
            Container(
              margin: const EdgeInsets.only(top: 100.0),
              child: ElevatedButton(
                onPressed: rollDice,
                child: const Text('Roll Dice'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
