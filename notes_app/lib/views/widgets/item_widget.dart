import 'package:flutter/material.dart';

import '../edit_note_view.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFCCB0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomListTile(),

            Padding(
              padding: const EdgeInsets.only(right: 30.0, top: 10),
              child: Text(
                'May21 ,2022',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Flutter Tips',
        style: TextStyle(color: Colors.black, fontSize: 26),
      ),

      subtitle: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          'Build your career with tharwat samy',
          style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 19),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.delete, size: 24, color: Colors.black),
      ),
    );
  }
}
