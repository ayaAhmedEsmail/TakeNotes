import 'Note.dart';
import 'SaveIntoFile.dart';

class AddNote{
  SaveInFile save = SaveInFile();

  List<Note> notes = [];
  addNote(title,content) {
    notes.add(Note(title,content));
    for (var note in notes) {
      print('Title: ${note.title}, Content: ${note.content}');
      save.saveNotesToFile(Note(title, content));
    }
  }



}