import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int sNum) {
    final player = AudioCache();
    player.play('note$sNum.wav');
  }

  Expanded buildKey({ Color color, int sNum }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               buildKey(color: Colors.purple, sNum: 1),
               buildKey(color: Colors.indigo, sNum: 2),
               buildKey(color: Colors.teal, sNum: 3),
               buildKey(color: Colors.green, sNum: 4),
               buildKey(color: Colors.yellow, sNum: 5),
               buildKey(color: Colors.orange, sNum: 6),
               buildKey(color: Colors.red, sNum: 7),
             ],
          ),
        ),
      ),
    );
  }
}
