import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import '../edit_note_view.dart';

class ItemWidget extends StatelessWidget {
  final NoteModel note;
  const ItemWidget({super.key, required this.note});

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
            CustomListTile(note: note),

            Padding(
              padding: const EdgeInsets.only(right: 30.0, top: 10),
              child: Text(
                note.date,
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
  final NoteModel note;
  const CustomListTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        note.title,
        style: TextStyle(color: Colors.black, fontSize: 26),
      ),

      subtitle: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          note.subTitle,
          style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 19),
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          note.delete();
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        },
        icon: Icon(Icons.delete, size: 24, color: Colors.black),
      ),
    );
  }
}
