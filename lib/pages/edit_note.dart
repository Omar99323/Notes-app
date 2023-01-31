import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_txtfield.dart';
import '../widgets/custombar.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});
  static String id = 'second';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            CustomAppbar(
              title: 'Edit Note',
              icon: Icon(Icons.done),
            ),
            CustomTextField(hint: 'Title'),
            CustomTextField(
              hint: 'Content',
              linesnumber: 6,
            ),
          ],
        ),
      ),
    );
  }
}