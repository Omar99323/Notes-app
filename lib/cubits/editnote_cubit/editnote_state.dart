abstract class EditnoteState {}

class EditnoteInitial extends EditnoteState {}

class EditnoteLoading extends EditnoteState {}

class EditnoteSuccess extends EditnoteState {}

class EditnoteFailure extends EditnoteState {
  final String errmsg;

  EditnoteFailure(this.errmsg);
}
