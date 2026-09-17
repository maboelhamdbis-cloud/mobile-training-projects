import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            color: Colors.orange,
            title: 'Numbers',
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Numbers();
              }));
            },
          ),
          Category(
            color: Colors.green,
            title: 'Family Members',
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembers();
              }));
            },
          ),
          Category(
            color: Colors.purple,
            title: 'Colors',
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
            color: Colors.lightBlue,
            title: 'Phrases',
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
