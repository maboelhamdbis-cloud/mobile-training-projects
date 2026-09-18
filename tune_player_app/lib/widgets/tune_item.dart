import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final Color color;
  final String sound;
  const Item({super.key, required this.color, required this.sound});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final sound = AudioPlayer();
          sound.play(AssetSource(this.sound));
        },
        child: Container(color: color, width: double.infinity));
  }
}
