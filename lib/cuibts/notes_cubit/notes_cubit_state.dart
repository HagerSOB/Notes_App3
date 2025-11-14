part of 'notes_cubit.dart';

@immutable

abstract class NotesState{}

class NotesInitial extends NotesState{}
class NoteLoading extends NotesState {}
class NoteSuccsses extends NotesState {
  final List<NoteModle> notes;

  NoteSuccsses(this.notes);
}
class NoteFailure extends NotesState {
  final String errMessage;

  NoteFailure(this.errMessage);

}