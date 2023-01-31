import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note.dart';
import 'package:notes_app/widgets/custombar.dart';

class Scaffoldbody extends StatelessWidget {
  const Scaffoldbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomAppbar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Note();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
