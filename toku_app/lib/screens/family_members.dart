import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/item_model.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  final List<ItemModel> members = const [
    ItemModel(
        image: 'images/family_members/family_father.png',
        javText: 'Chichioya',
        enText: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'images/family_members/family_daughter.png',
        javText: 'Musume',
        enText: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'images/family_members/family_grandfather.png',
        javText: 'Ojisan',
        enText: 'grand father',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'images/family_members/family_mother.png',
        javText: 'Hahad',
        enText: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'images/family_members/family_grandmother.png',
        javText: 'Sobo',
        enText: 'grand mother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'images/family_members/family_older_brother.png',
        javText: 'Nisan',
        enText: 'older brother',
        sound: 'sounds/family_members/older bother.wav'),
    ItemModel(
        image: 'images/family_members/family_older_sister.png',
        javText: 'Ane',
        enText: 'older sister',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'images/family_members/family_son.png',
        javText: 'Musuko',
        enText: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'images/family_members/family_younger_brother.png',
        javText: '',
        enText: 'younger brother',
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
        image: 'images/family_members/family_younger_sister.png',
        javText: '',
        enText: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Item(
              item: members[index],
              primaryColor: Colors.green,
              imageBackgroundColor: const Color.fromRGBO(255, 236, 179, 1));
        },
      ),
    );
  }
}
