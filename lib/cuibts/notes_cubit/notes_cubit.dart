import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app3/Models/Note_modle.dart';
import 'package:notes_app3/constants.dart';
part 'notes_cubit_state.dart';

class NoteCubit extends Cubit<NotesState> {
  NoteCubit() : super(NotesInitial());
  List<NoteModle>  ?notes;

  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModle>(kNotesBox);
     notes = notesBox.values.toList();
     emit(NotesSucsses());
  }
}
