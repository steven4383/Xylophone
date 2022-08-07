import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylo());
}

class Xylo extends StatelessWidget {
  const Xylo({Key? key}) : super(key: key);
  void playsound(int note) {
    AssetsAudioPlayer.newPlayer().open(
      Audio('assets/note$note.wav'),
    );
  }

  Expanded bulidkey(Color color, int num) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              bulidkey(Colors.red, 1),
              bulidkey(Colors.orange, 2),
              bulidkey(Colors.yellow, 3),
              bulidkey(Colors.green, 4),
              bulidkey(Colors.teal, 5),
              bulidkey(Colors.blue, 6),
              bulidkey(Colors.purple, 7),
            ],
          )),
        ),
      ),
    );
  }
}
