import 'package:flutter_bloc/flutter_bloc.dart';
import 'addnote_state.dart';



class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());
}
