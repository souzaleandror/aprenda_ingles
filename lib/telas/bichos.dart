import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  AudioCache audioCache = AudioCache();

  _executar(String nomeAudio) {
    print('executar');
    audioCache.play('audios/' + nomeAudio + ".mp3");
    print('executar2');
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    audioCache.loadAll([
      'audios/cao.mp3',
      'audios/gato.mp3',
      'audios/leao.mp3',
      'audios/macaco.mp3',
      'audios/ovelha.mp3',
      'audios/vaca.mp3'
    ]);

    return GridView.count(
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: () {
            print('cao');
            _executar('cao');
            print('cao2');
          },
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('gato');
          },
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('leao');
          },
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('macaco');
          },
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('ovelha');
          },
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar('vaca');
          },
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
