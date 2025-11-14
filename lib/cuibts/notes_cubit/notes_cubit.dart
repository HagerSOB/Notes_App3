import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/constants.dart';
part 'notes_cubit_state.dart';
class NoteCubit extends Cubit<NotesState>{
  NoteCubit():super (NotesInitial());
fetchAllNotes()async{
  emit(NoteLoading());
  try{
    var notesBox=Hive.box<NoteModle>(kNotesBox);
List<NoteModle> notes= notesBox.values.toList();
    emit(NoteSuccsses(notes));
  }catch (e){
    emit(NoteFailure(e.toString()));
  }

}

}