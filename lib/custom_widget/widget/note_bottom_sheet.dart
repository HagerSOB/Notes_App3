import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app3/cuibts/add_note_cubit.dart';
import 'package:notes_app3/custom_widget/widget/add_note_form.dart';

class AddNoteBttomSheet extends StatelessWidget {
  const AddNoteBttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: BlocConsumer<AddNoteCubit, NotesState>(
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is NoteLoading ? true : false,
                child:  SingleChildScrollView(child: AddNoteForm()));
          },
          listener: (context, state) {
            if (state is NoteFailure) {
              print("Note Failed ${state.errMessage}");
            }
            if (state is NoteSuccsses) {
              Navigator.pop(context);
            }
          },
        ),
      
    );
  }
}
