
import 'package:flutter/material.dart';
import 'package:notes_app3/custom_widget/custom_text_field.dart';

class AddNoteBttomSheet extends StatelessWidget {
  const AddNoteBttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(hint: 'hajer',),
      ],
    );
  }
}
