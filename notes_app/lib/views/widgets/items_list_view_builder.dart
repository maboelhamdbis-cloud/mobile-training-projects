import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/item_widget.dart';

class ItemsListViewBuilder extends StatelessWidget {
  const ItemsListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ItemWidget();
      },
    );
  }
}
