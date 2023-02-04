abstract class AddnoteState {}

class AddnoteInitial extends AddnoteState {}

class AddnoteLoading extends AddnoteState {}

class AddnoteSuccess extends AddnoteState {}

class AddnoteFailure extends AddnoteState {
  final String errmsg;

  AddnoteFailure(this.errmsg);
}
