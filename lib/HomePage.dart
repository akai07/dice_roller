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
  late AssetImage diceimage2;
  late AssetImage newImage;
  late AssetImage newImage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = one;
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
    int random2 = (1 + Random().nextInt(6));

    switch (random2) {
      case 1:
        newImage2 = one;

        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;

        break;
      case 6:
        newImage2 = six;
        break;
    }
    setState(() {
      diceimage = newImage;
      diceimage2 = newImage2;
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
            Column(
              children: [
                Image(
                  image: diceimage,
                  width: 200.0,
                  height: 200.0,
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                Image(image: diceimage2, width: 200.0, height: 200.0),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 100.0),
              child: SizedBox(
                width: 200,
                height: 100,
                child: ElevatedButton(
                    onPressed: rollDice,
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
                    //textsize bigger
                    child: const Text('Roll Dice',
                        style: TextStyle(fontSize: 30.0, color: Colors.black))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
