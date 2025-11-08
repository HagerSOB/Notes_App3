
import 'package:flutter/material.dart';
import 'package:notes_app3/custom_widget/custom_bottom.dart';
import 'package:notes_app3/custom_widget/custom_text_field.dart';

class AddNoteBttomSheet extends StatelessWidget {
  const AddNoteBttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: const Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(hint: 'title',),SizedBox(height: 20,),CustomTextField(hint: "content",maxLine: 6,),
            SizedBox(height: 80,),
            CustomBottom(),SizedBox(height: 18,)
        
          ],
        ),
      ),
    );
  }
}
