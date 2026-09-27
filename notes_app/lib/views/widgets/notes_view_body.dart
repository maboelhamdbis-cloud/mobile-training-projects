import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/item_widget.dart';
import 'package:notes_app/views/widgets/items_list_view_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: const Column(
        children: [
          SizedBox(height: 8),
          CustomAppBar(icon: Icons.search , title: 'Notes',),
          SizedBox(height: 8),
          Expanded(child: ItemsListViewBuilder()),
        ],
      ),
    );
  }
}
