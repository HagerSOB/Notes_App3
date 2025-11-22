import 'package:flutter/material.dart';
import 'package:notes_app3/custom_widget/widget/note_bottom_sheet.dart';
import 'package:notes_app3/views/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:   FloatingActionButton(onPressed: (){
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),context: context, builder: (context){
            return  AddNoteBttomSheet();
          });
        },child: Icon(Icons.add),)
        ,body: NotesViewBody(),
    );

  }
}
