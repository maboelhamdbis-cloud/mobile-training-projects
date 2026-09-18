import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: const Text(
          'Flutter tune',
          style: TextStyle(color: Color.fromRGBO(255, 248, 225, 1)),
        ),
      ),
      body: const Column(
        children: [
          Expanded(child: Item(color: Colors.red, sound: 'note1.wav')),
          Expanded(child: Item(color: Colors.orange, sound: 'note2.wav')),
          Expanded(child: Item(color: Colors.yellow, sound: 'note3.wav')),
          Expanded(child: Item(color: Colors.green, sound: 'note4.wav')),
          Expanded(
              child: Item(
                  color: Color.fromRGBO(27, 94, 32, 1), sound: 'note5.wav')),
          Expanded(
              child: Item(
                  color: Color.fromRGBO(21, 101, 192, 1), sound: 'note6.wav')),
          Expanded(
              child: Item(
                  color: Color.fromRGBO(106, 27, 154, 1), sound: 'note7.wav')),
        ],
      ),
    );
  }
}
