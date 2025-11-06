
import 'package:flutter/material.dart';
import 'package:notes_app3/custom_widget/widget/note_item.dart';
import 'package:notes_app3/views/edit_note_view.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero
          ,itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: GestureDetector(
            child: NoteItem(),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return EditNoteView();
              }));
            },
          ),
        );
      }),
    );
  }
}
