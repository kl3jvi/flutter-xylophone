import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey({String nota = '', int i, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(i);
        },
        color: color,
        child: Center(child: Text(nota)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(nota: 'do', i: 1, color: Colors.red),
              buildKey(nota: 're', i: 2, color: Colors.yellow),
              buildKey(nota: 'mi', i: 3, color: Colors.blue),
              buildKey(nota: 'fa', i: 4, color: Colors.purple),
              buildKey(nota: 'sol', i: 5, color: Colors.orange),
              buildKey(nota: 'la', i: 6, color: Colors.teal),
              buildKey(nota: 'si', i: 7, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
