import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/constants.dart';
import 'package:notes_app3/cuibts/notes_cubit/notes_cubit.dart';
import 'package:notes_app3/simple_bloc_observer.dart';
import 'package:notes_app3/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModleAdapter());
 await Hive.openBox<NoteModle>(kNotesBox);
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> NoteCubit(),
      child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.dark,
              fontFamily: 'Poppins',
            ),
            home: const NotesView(),
        ),
    );

  }
}
