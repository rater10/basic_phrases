import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

typedef void OnError(Exception exception);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(
        title: 'Basic Phrases',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioCache = new AudioCache();
  final List<String> _phrases = [
    'salut',
    'salut(Germana)',
    'ma numesc',
    'ma numesc(Germana)',
    'cum esti?',
    'cum esti?(Germana)',
    'sunt bine',
    'sunt bine(Germana)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
          centerTitle: true,
        ),
        body: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: _phrases.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return FlatButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    print(_phrases[index]);
                    switch (_phrases[index]) {
                      case 'salut': {
                        audioCache.play('salut.mp3');
                      }
                      break;
                      case 'salut(Germana)': {
                        audioCache.play('salut(Germana).mp3');
                      }
                      break;
                      case 'ma numesc': {
                        audioCache.play('ma numesc.mp3');
                      }
                      break;
                      case 'ma numesc(Germana)': {
                        audioCache.play('ma numesc(Germana).mp3');
                      }
                      break;
                      case 'cum esti?': {
                        audioCache.play('cum esti.mp3');
                      }
                      break;
                      case 'cum esti?(Germana)': {
                        audioCache.play('cum esti(Germana).mp3');
                      }
                      break;
                      case 'sunt bine': {
                        audioCache.play('sunt bine.mp3');
                      }
                      break;
                      case 'sunt bine(Germana)': {
                        audioCache.play('sunt bine(Germana).mp3');
                      }
                      break;
                    }
                  },
                  child: Text(
                    _phrases[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 16.0),
                  ));
            }));
  }
}
