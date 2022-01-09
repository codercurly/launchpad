import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: araYuz(),
    );
  }
}

class araYuz extends StatelessWidget {
  final player = AudioCache();
 void  oynat ( String ses) async{
   await player.play('../assets/$ses.wav');
 }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
                children: [
              Expanded(
                child: buildFlatButton('bongo', Colors.pinkAccent),
              ),
              Expanded(
                child: buildFlatButton('bip', Colors.lime),
              ),
            ]),
          ),
          Expanded(
            child: Row(
                children: [
                  Expanded(
                    child: buildFlatButton('clap1', Colors.deepPurple),
                  ),
                  Expanded(
                    child:buildFlatButton('clap2', Colors.lightBlue),
                  ),
                ]),
          ),
          Expanded(
            child: Row(
                children: [
                  Expanded(
                    child:buildFlatButton('clap3', Colors.deepOrangeAccent),
                  ),
                  Expanded(
                    child: buildFlatButton('crash', Colors.brown),
                  ),
                ]),
          ),
          Expanded(
            child: Row(
                children: [
                  Expanded(
                    child:buildFlatButton('how', Colors.greenAccent),
                  ),
                  Expanded(
                    child: buildFlatButton('oobah', Colors.orange),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  FlatButton buildFlatButton( String voice, Color renk) {
    return FlatButton(
                padding: EdgeInsets.all(8.0),
                  onPressed: ()  {
                    oynat(voice);
                  },
                  child: Container(
                    color: renk,
                  ));
  }
}
