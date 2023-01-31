import 'package:flutter/material.dart';
import 'package:notes_app/widgets/button.dart';
import 'package:notes_app/widgets/custom_txtfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children:const [
           CustomTextField(hint: 'Title',),
           CustomTextField(hint: 'Content', linesnumber: 6,),
           Spacer(
            flex: 3,
          ),
           Buttton(
            title: 'Add',
          ),
        ],
      ),
    );
  }
}

