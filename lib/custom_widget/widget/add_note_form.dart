import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/cuibts/add_note_cubit.dart';
import 'package:notes_app3/custom_widget/custom_bottom.dart';
import 'package:notes_app3/custom_widget/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> FormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "content",
            maxLine: 6,
          ),
          SizedBox(
            height: 80,
          ),
          CustomBottom(onTap: () {
            if (FormKey.currentState!.validate()) {
              FormKey.currentState!.save();
              NoteModle note = NoteModle(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(note);
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }),
          SizedBox(
            height: 18,
          )
        ],
      ),
    );
  }
}
