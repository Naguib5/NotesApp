
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'customTextField.dart';
class EditNoteViewWidget extends StatelessWidget {
  const EditNoteViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomAppBar(icon: Icon(Icons.check,),text: 'Edit Note',),
            CustomTextField(
              hintText: 'Title',
              maxline: 1,
            ),
            CustomTextField(
              hintText: 'Content',
              maxline: 5,
            ),
            SizedBox(height: 80,),

          ],
        ),
      ),
    );
  }
}
