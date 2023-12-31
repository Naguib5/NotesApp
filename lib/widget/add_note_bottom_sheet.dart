import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNOteBottomsheet extends StatelessWidget {
  const AddNOteBottomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            height: 500,
            child: BlocConsumer<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
                if (state is AddNotefailure) {
                  print('note add failure ${state.errorMessage}');
                } else if (state is AddNoteSucces) {
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                return AbsorbPointer(
                    absorbing: state is AddNoteLoading ? true : false,
                    child: AddNoteForm());
              },
            ),
          ),
        ),
      ),
    );
  }
}
