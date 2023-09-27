import 'package:flutter/cupertino.dart';

import 'custom Button.dart';
import 'customTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titele;
  String? subtitele;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              titele = value;
            },
            hintText: 'Title',
            maxline: 1,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitele = value;
            },
            hintText: 'Content',
            maxline: 5,
          ),
          SizedBox(
            height: 60,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
