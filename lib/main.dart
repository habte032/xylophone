import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audio_cache.dart';

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
                    child: Text('1')
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white10)),

                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note2.wav'),
                    );
                  },
                    child: Text('2')
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note3.wav'),
                    );
                  },
                    child: Text('3')
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white54)),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note4.wav'),
                    );
                  },
                    child: Text('4')
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note5.wav'),
                    );
                  },
                    child: Text('5')
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white30)),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note6.wav'),
                    );
                  },
                  child: Text('6')
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note7.wav'),
                    );
                  },
                  child: Text('7')
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
