
import 'package:flutter/cupertino.dart';
import 'custom_notes_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,bottom:10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: const CustomNotesItem(),
        );
      }),
    );
  }
}