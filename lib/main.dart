import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/edit_note.dart';
import 'package:notes_app/pages/homepage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Notes');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        EditNotePage.id: (context) => const EditNotePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
