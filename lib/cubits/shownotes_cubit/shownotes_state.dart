abstract class ShownotesState {}

class ShownotesInitial extends ShownotesState {}

class ShownotesLoading extends ShownotesState {}

class ShownotesSuccess extends ShownotesState {}

class ShownotesFailure extends ShownotesState {
  final String errmsg;

  ShownotesFailure(this.errmsg);
}
