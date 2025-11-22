import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/cuibts/notes_cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModle note;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              note.title,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(note.subTitle          ,       style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(.5))),
            ),
            trailing: IconButton(
              onPressed: () {
                note.delete();
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              },
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(note.date,
                style: TextStyle(
                    fontSize: 15, color: Colors.black.withOpacity(.5))),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Color(note.color), borderRadius: BorderRadius.circular(16)),
    );
  }
}
