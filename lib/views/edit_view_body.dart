import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/cuibts/notes_cubit/notes_cubit.dart';
import 'package:notes_app3/custom_widget/custem_app_bar.dart';
import 'package:notes_app3/custom_widget/custom_text_field.dart';
import 'package:notes_app3/custom_widget/widget/edit_note_color_list.dart';


class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModle note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(
          height: 70,
        ),
        CustomAppBarr(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = content ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NoteCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          title: 'Edit Note',
          icon: Icons.check,
        ),
        SizedBox(
          height: 40,
        ),
        CustomTextField(
          onChanged: (value) {
            title = value;
          },
          hint: widget.note.title,
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          onChanged: (value) {
            content = value;
          },
          maxLine: 7,
          hint: widget.note.subTitle,
        ),
        EditNoteColorList(note:widget.note,)
      ]),
    );
  }
}
