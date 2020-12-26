import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color buttonColor}) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
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
              buildKey(soundNumber: 1, buttonColor: Colors.red),
              buildKey(soundNumber: 2, buttonColor: Colors.orange),
              buildKey(soundNumber: 3, buttonColor: Colors.yellow),
              buildKey(soundNumber: 4, buttonColor: Colors.green),
              buildKey(soundNumber: 5, buttonColor: Colors.teal),
              buildKey(soundNumber: 6, buttonColor: Colors.blue),
              buildKey(soundNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
