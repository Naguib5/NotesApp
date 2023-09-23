
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom%20Button.dart';
import 'package:notes_app/widget/customTextField.dart';
class ShowNotesBottomSheet extends StatelessWidget {
  const ShowNotesBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          height: 500,
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Title',
                maxline: 1,
              ),
            CustomTextField(
              hintText: 'Content',
              maxline: 5,
            ),
              SizedBox(height: 80,),
             CustomButton(),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }


}
