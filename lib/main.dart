import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

class  Xylophone extends StatelessWidget {
void playSound(int number){
  final player = AudioCache();
  player.play('note$number.wav');
}
Expanded buildKey({int soundNum, Color color}){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        playSound(soundNum);
      },
      child: Text(""),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNum: 1, color: Colors.red),
              buildKey(soundNum: 2, color: Colors.green),
              buildKey(soundNum: 3, color:  Colors.blue),
              buildKey(soundNum: 4, color: Colors.deepPurpleAccent),
              buildKey(soundNum: 5, color: Colors.redAccent),
              buildKey(soundNum: 6, color: Colors.black54),
              buildKey(soundNum: 7, color: Colors.pink),
              // Expanded(
              //   child: RaisedButton(
              //     color: Colors.indigo,
              //     onPressed: (){
              //       final player = AudioCache();
              //       player.play('note1.wav');
              //     },
              //     child: Text(""),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
