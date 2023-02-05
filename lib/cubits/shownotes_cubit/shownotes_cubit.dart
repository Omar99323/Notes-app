import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'shownotes_state.dart';

class ShownotesCubit extends Cubit<ShownotesState> {
  ShownotesCubit() : super(ShownotesInitial());
  List<NoteModel>? notes;
  shownotes() {
    var notesbox = Hive.box<NoteModel>('Notes');
    notes = notesbox.values.toList();
    
  }
}
