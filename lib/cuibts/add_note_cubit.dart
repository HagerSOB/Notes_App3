import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/constants.dart';
part 'add_note_state.dart';
class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super (AddNoteInitial());
  Color color=Colors.red;
  addNote(NoteModle note) async{
    note.color=color.value;
    emit(AddNoteLoading());
    try{
      var notesBox=Hive.box<NoteModle>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccsses());
    }catch (e){
      emit(AddNoteFailure(e.toString()));
    }

  }

}