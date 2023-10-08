import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/NoteModel.dart';

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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isloading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var notemodel = NoteModel(
                      title: titele!,
                      subtitle: subtitele!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).AddNote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                  setState(() {});
                },
              );
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
