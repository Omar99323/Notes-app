abstract class DeletenoteState {}

class DeletenoteInitial extends DeletenoteState {}

class DeletenoteLoading extends DeletenoteState {}

class DeletenoteSuccess extends DeletenoteState {}

class DeletenoteFailure extends DeletenoteState {
  final String errmsg;

  DeletenoteFailure(this.errmsg);
}
