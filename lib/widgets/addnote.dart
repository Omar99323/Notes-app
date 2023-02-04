import 'package:flutter/material.dart';
import 'package:notes_app/widgets/button.dart';
import 'package:notes_app/widgets/custom_txtfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SingleChildScrollView(
        child: NoteForm(),
      ),
    );
  }
}

class NoteForm extends StatefulWidget {
  const NoteForm({
    super.key,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: SizedBox(
        height: 350,
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
              onsaved: (value) {
                title = value;
              },
            ),
            CustomTextField(
              hint: 'Content',
              linesnumber: 6,
              onsaved: (value) {
                content = value;
              },
            ),
            const Spacer(
              flex: 3,
            ),
            Buttton(
              ontap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              title: 'Add',
            ),
          ],
        ),
      ),
    );
  }
}
