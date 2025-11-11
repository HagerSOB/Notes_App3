import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app3/Models/Note_modle.dart';
part 'add_note_state.dart';
class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super (NotesInitial());
 addNote( NoteModle note){}

}