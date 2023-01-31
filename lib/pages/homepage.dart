import 'package:flutter/material.dart';
import 'package:notes_app/widgets/addnote.dart';
import 'package:notes_app/widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id='first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
            context: context,
            builder: (context) {
              return const AddNote();
            },
          );
        },
      ),
      body: const Scaffoldbody(),
    );
  }
}

