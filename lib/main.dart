import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text('Xylophone'),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),

                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note1.wav'),
                    );
                  },
                    child: const Text('1')
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
