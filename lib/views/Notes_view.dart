import 'package:flutter/material.dart';
import 'package:notes_app/widget/ShowNotesBottomSheet.dart';
import 'package:notes_app/widget/notes_view_body.dart';
class Notes_view extends StatelessWidget {
  const Notes_view({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
           showModalBottomSheet(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(16),
             ),
               context: context,
               builder:(context){
                 return ShowNotesBottomSheet();
           } );
          },
        child: Icon(Icons.add),
      ),
      body: notes_view_body(),
    );
  }
}
