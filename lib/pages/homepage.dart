import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/shownotes_cubit/shownotes_cubit.dart';
import 'package:notes_app/widgets/addnote.dart';
import 'package:notes_app/widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'first';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShownotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context,
              builder: (context) {
                return const AddNote();
              },
            );
          },
        ),
        body: const Scaffoldbody(),
      ),
    );
  }
}
