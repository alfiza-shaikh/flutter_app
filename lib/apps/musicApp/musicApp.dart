import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class MusicApp extends StatelessWidget {

  void playTune(int num) {
    final p = AudioCache();
    if(num == 4 || num == 7){
      p.play("$num.WAV");
    } else {
      p.play("$num.wav");
    }
  }

  Widget MyButton({Color color,int num}){
    return Expanded(
      flex : 1,
      child: FlatButton(
        color: color,
        onPressed: (){
          playTune(num);
        },
        child: Icon(Icons.music_note),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyButton(
              num: 1,
              color: Colors.yellow,
            ),
            MyButton(
              num: 2,
              color: Colors.red,
            ),
            MyButton(
              num: 3,
              color: Colors.indigo,
            ),
            MyButton(
              num: 4,
              color: Colors.blue,
            ),
            MyButton(
              num: 5,
              color: Colors.green,
            ),
            MyButton(
              num: 6,
              color: Colors.orange,
            ),
            MyButton(
              num: 7,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
