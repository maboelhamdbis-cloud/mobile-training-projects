import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(icon: Icons.check, title: 'Edit Note'),
            SizedBox(height: 40),
            CustomTextField(hint: 'title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
