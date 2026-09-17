import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {Key? key, required this.color, required this.title, required this.ontap})
      : super(key: key);

  final Color color;
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 20, bottom: 20),
        color: color,
        width: double.infinity,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
