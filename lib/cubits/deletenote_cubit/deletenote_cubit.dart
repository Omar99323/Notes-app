import 'package:flutter_bloc/flutter_bloc.dart';
import 'deletenote_state.dart';

class DeletenoteCubit extends Cubit<DeletenoteState> {
  DeletenoteCubit() : super(DeletenoteInitial());
}
