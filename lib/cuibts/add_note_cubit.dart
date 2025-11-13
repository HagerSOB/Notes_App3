import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/constants.dart';
part 'add_note_state.dart';
class AddNoteCubit extends Cubit<NotesState>{
  AddNoteCubit():super (NotesInitial());
  addNote(NoteModle note) async{
    emit(NoteLoading());
    try{
      var notesBox=Hive.box<NoteModle>(kNotesBox);
      emit(NoteSuccsses());
    }catch (e){
      emit(NoteFailure(e.toString()));
    }

  }

}