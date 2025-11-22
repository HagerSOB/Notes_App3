import 'package:flutter/material.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/views/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModle note;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(body: EditViewBody(note: note,),);

  }
}
