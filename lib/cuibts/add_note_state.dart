part of 'add_note_cubit.dart';
@immutable
 abstract class NotesState{}

class NotesInitial extends NotesState{}
class NoteLoading extends NotesState {}
class NoteSuccsses extends NotesState {}
class NoteFailure extends NotesState {
 final String errMessage;

 NoteFailure(this.errMessage);

}