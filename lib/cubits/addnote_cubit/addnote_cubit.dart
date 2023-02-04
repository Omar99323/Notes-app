import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  addnote(NoteModel note) async {
    emit(AddnoteLoading());
    try {
      var notes = Hive.box<NoteModel>('Notes');
      await notes.add(note);
      emit(AddnoteSuccess());
    } on Exception catch (e) {
      emit(AddnoteFailure(e.toString()));
    }
  }
}
