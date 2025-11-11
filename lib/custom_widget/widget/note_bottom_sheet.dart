import 'package:flutter/material.dart';
import 'package:notes_app3/custom_widget/widget/add_note_form.dart';

class AddNoteBttomSheet extends StatelessWidget {
  const AddNoteBttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
