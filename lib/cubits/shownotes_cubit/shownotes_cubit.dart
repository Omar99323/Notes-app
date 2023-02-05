import 'package:flutter_bloc/flutter_bloc.dart';
import 'shownotes_state.dart';

class ShownotesCubit extends Cubit<ShownotesState> {
  ShownotesCubit() : super(ShownotesInitial());
}
