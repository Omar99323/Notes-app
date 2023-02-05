import 'package:flutter_bloc/flutter_bloc.dart';
import 'editnote_state.dart';

class EditnoteCubit extends Cubit<EditnoteState> {
  EditnoteCubit() : super(EditnoteInitial());
}
