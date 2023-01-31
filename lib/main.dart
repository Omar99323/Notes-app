import 'package:flutter/material.dart';
import 'package:notes_app/pages/edit_note.dart';
import 'package:notes_app/pages/homepage.dart';

void main() {
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
        HomePage.id :(context) => const HomePage(),
        EditNotePage.id :(context) => const EditNotePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
