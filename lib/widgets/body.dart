import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/shownotes_cubit/shownotes_cubit.dart';
import 'package:notes_app/cubits/shownotes_cubit/shownotes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note.dart';
import 'package:notes_app/widgets/custombar.dart';

class Scaffoldbody extends StatefulWidget {
  const Scaffoldbody({super.key});

  @override
  State<Scaffoldbody> createState() => _ScaffoldbodyState();
}

class _ScaffoldbodyState extends State<Scaffoldbody> {
  @override
  void initState() {
    BlocProvider.of<ShownotesCubit>(context).shownotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20, top: 35,bottom:65 ,),
      child: Column(
        children: [
          const CustomAppbar(
            title: 'Notes',
            icon:  Icon(Icons.logout),
            
          ),
          Expanded(
            child: BlocBuilder<ShownotesCubit, ShownotesState>(
              builder: (context, state) {
                List<NoteModel> nots =
                    BlocProvider.of<ShownotesCubit>(context).notes!;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 10),
                    itemCount: nots.length,
                    itemBuilder: (context, index) {
                      return Note(
                        note: nots[index],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
