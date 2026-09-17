import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/item_model.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.item,
      required this.primaryColor,
      required this.imageBackgroundColor})
      : super(key: key);
  final ItemModel item;
  final Color primaryColor;
  final Color imageBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: primaryColor,
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              color: imageBackgroundColor,
              child: Image.asset(
                item.image,
              )),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.javText,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                item.enText,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource(item.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
