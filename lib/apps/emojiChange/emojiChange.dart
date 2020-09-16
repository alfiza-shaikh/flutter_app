import 'dart:math';

import 'package:flutter/material.dart';

class EmojiChange extends StatefulWidget {
  @override
  _EmojiChangeState createState() => _EmojiChangeState();
}

class _EmojiChangeState extends State<EmojiChange> {

  int img1 = Random().nextInt(12)+1;
  int img2 = Random().nextInt(12)+1;

  void changeEmoji(){
    print('ch');
    setState(() {
      img1 = Random().nextInt(12)+1;
      img2 = Random().nextInt(12)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Emoji Fun"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: FlatButton(
                child: Image.asset('images/$img1.png', fit: BoxFit.cover),
                onPressed: () => changeEmoji(),
              ),
            ),
            Expanded(
              flex:1,
              child: FlatButton(
                child: Image.asset('images/$img2.png',fit: BoxFit.cover),
                onPressed: () => changeEmoji(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}