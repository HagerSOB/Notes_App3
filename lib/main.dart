import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/constants.dart';
import 'package:notes_app3/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModleAdapter());
 await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
    );
  }
}
