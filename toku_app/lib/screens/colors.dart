import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<ItemModel> colors = const [
    ItemModel(
        image: 'images/colors/color_black.png',
        javText: 'Chichioya',
        enText: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'images/colors/color_brown.png',
        javText: 'Chichioya',
        enText: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'images/colors/color_dusty_yellow.png',
        javText: 'Chichioya',
        enText: 'dusty_yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemModel(
        image: 'images/colors/color_gray.png',
        javText: 'Chichioya',
        enText: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'images/colors/color_green.png',
        javText: 'Chichioya',
        enText: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'images/colors/color_red.png',
        javText: 'Chichioya',
        enText: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'images/colors/color_white.png',
        javText: 'Chichioya',
        enText: 'white',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'images/colors/yellow.png',
        javText: 'Chichioya',
        enText: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
              item: colors[index],
              primaryColor: Colors.purple,
              imageBackgroundColor: const Color.fromRGBO(255, 236, 179, 1));
        },
      ),
    );
  }
}
