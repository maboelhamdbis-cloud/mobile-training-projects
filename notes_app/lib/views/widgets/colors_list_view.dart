import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;
  const ColorItem({super.key, required this.isActive, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: isActive
          ? CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 30, backgroundColor: color),
            )
          : CircleAvatar(radius: 30, backgroundColor: color),
    );
  }
}

List<Color> colors = [
  Color(0xffD9BBF9),
  Color(0xffCCA7A2),
  Color(0xffAA9FB1),
  Color(0xff7871AA),
  Color(0xff4E5283),
];

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            currentIndex = index;
            setState(() {});
          },
          child: ColorItem(
            isActive: currentIndex == index,
            color: colors[index],
          ),
        );
      },
    );
  }
}
