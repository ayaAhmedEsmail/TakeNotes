import 'Note.dart';

abstract class NoteManager {
  List<Note> note= [];
  addNote(title,content);
  showNotes();
  editNotes();
  deleteNote();
  exit();
}