import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app3/cuibts/add_note_cubit.dart';
import 'package:notes_app3/cuibts/notes_cubit/notes_cubit.dart';
import 'package:notes_app3/custom_widget/widget/add_note_form.dart';

class AddNoteBttomSheet extends StatelessWidget {
  const AddNoteBttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state  is AddNoteLoading?true:false,
                child:   Padding(
                      padding:  EdgeInsets.only(left: 16,right: 16,
                          bottom:MediaQuery.of(context).viewInsets.bottom),
                      child: SingleChildScrollView(child: AddNoteForm()),
                    ),
              );
            },
            listener: (context, state) {
              if (state is AddNoteFailure) {
              }
              if (state is AddNoteSuccsses) {
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              }
            },
          ),


    );
  }
}
