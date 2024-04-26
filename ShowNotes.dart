import 'NoteManager.dart';
import 'ReadFromFile.dart';

class ShowNotes extends NoteManager {
  //List<Note> notes = [Note("a", "content"), Note("title2", "content1")];
  //List<Note> notes = [];

  void showNotes(){
    final filename = 'notes.txt';
    if(filename.length==0){
      print("No notes found, please add your tasks..");
    }
    else{
      print("All Notes: ");
    ReadFromFile r= ReadFromFile();
    r.readNotesFromFile();
    }
    }

  @override
  addNote(title, content) {
  }

  @override
  deleteNote() {
  }

  @override
  editNotes() {
  }

  @override
  exit() {
  }
  }
