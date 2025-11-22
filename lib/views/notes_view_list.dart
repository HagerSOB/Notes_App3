
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/cuibts/notes_cubit/notes_cubit.dart';
import 'package:notes_app3/custom_widget/widget/note_item.dart';
import 'package:notes_app3/views/edit_note_view.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NoteCubit,NotesState>(
      builder: (context, state) {
        List<NoteModle> notes=BlocProvider.of<NoteCubit>(context).notes!;
        return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount: notes.length,
        padding: EdgeInsets.zero
        ,itemBuilder: (context,index){
        return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: GestureDetector(
        child: NoteItem(note: notes[index],),
        onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return EditNoteView(note: notes[index],);
        }));
        },
        ),
        );
    },


        )
    );
  } );
  }
}
