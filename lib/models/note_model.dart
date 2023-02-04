import 'dart:ffi';

class NoteModel {
  final String title;
  final String content;
  final String date;
  final Int color;

  NoteModel(
      {required this.title,
      required this.content,
      required this.date,
      required this.color});
}
