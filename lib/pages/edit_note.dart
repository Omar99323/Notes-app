import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnote_cubit/addnote_cubit.dart';
import 'package:notes_app/cubits/shownotes_cubit/shownotes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_txtfield.dart';
import '../widgets/custombar.dart';

class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key});
  static String id = 'second';

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomAppbar(
              title: 'Edit Note',
              icon: const Icon(Icons.done),
              onpress: () {
                note = NoteModel(
                  title: title ?? note.title,
                  content: content ?? note.content,
                  date: note.date,
                  color: note.color,
                );
                BlocProvider.of<AddnoteCubit>(context).addnote(note);
                BlocProvider.of<ShownotesCubit>(context).shownotes();
                Navigator.pop(context);
              },
            ),
            CustomTextField(
              hint: note.title,
              onchanged: (value) {
                title = value;
              },
            ),
            CustomTextField(
              hint: note.content,
              linesnumber: 6,
              onchanged: (value) {
                content = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
