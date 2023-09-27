import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/NoteModel.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSucces());
      await NotesBox.add(note);
    } catch (e) {
      AddNotefailure(errorMessage: e.toString());
    }
  }
}
