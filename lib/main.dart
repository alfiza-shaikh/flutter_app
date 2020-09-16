import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'apps/emojiChange/emojiChange.dart';
import 'apps/mcqApp/mcqApp.dart';
import 'apps/musicApp/musicApp.dart';

void main() {
  runApp(MyApp());
}

//wav sound file
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MCQApp(),
    );
  }
}