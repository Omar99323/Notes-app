import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/addnote_cubit/addnote_cubit.dart';
import 'package:notes_app/cubits/shownotes_cubit/shownotes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/observer.dart';
import 'package:notes_app/pages/edit_note.dart';
import 'package:notes_app/pages/homepage.dart';

void main() async {
  Bloc.observer = Observer();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('Notes');

  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black12,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShownotesCubit(),
        ),
        BlocProvider(
          create: (context) => AddnoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routes: {
          HomePage.id: (context) => const HomePage(),
          EditNotePage.id: (context) => const EditNotePage(),
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
