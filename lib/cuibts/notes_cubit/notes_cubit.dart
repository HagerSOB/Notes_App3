import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app3/Models/Note_modle.dart';
part 'notes_cubit_state.dart';
class AddNoteCubit extends Cubit<NotesState>{
  AddNoteCubit():super (NotesInitial());


}