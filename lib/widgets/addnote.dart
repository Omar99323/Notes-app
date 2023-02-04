import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/addnote_cubit/addnote_cubit.dart';
import 'package:notes_app/cubits/addnote_cubit/addnote_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/button.dart';
import 'package:notes_app/widgets/custom_txtfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: BlocConsumer<AddnoteCubit, AddnoteState>(
        listener: (context, state) {
          if (state is AddnoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddnoteFailure) {
            print('error is ${state.errmsg}');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddnoteLoading ? true : false,
              child:const SingleChildScrollView(child:  NoteForm()));
        },
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
                  var notemodel = NoteModel(
                    title: title!,
                    content: content!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value,
                  );
                  BlocProvider.of<AddnoteCubit>(context).addnote(notemodel);
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
