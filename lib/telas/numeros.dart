import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  AudioCache audioCache = AudioCache();

  _executar(String nomeAudio) {
    audioCache.play('audios/' + nomeAudio + ".mp3");
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    audioCache.loadAll([
      'audios/1.mp3',
      'audios/2.mp3',
      'audios/3.mp3',
      'audios/4.mp3',
      'audios/5.mp3',
      'audios/6.mp3'
    ]);

    return GridView.count(
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: () {
            _executar('1');
          },
          child: Image.asset("assets/imagens/1.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('2');
          },
          child: Image.asset("assets/imagens/2.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('3');
          },
          child: Image.asset("assets/imagens/3.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('4');
          },
          child: Image.asset("assets/imagens/4.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('5');
          },
          child: Image.asset("assets/imagens/5.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('6');
          },
          child: Image.asset("assets/imagens/6.png"),
        ),
      ],
    );
  }
}
