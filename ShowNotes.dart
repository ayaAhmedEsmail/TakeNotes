import 'NoteManager.dart';
import 'ReadFromFile.dart';

class ShowNotes extends NoteManager {

  ReadFromFile r= ReadFromFile();

  void showNotes(){
    final filename = 'notes.txt';
    if(filename.length==0){
      print("No notes found, please add your tasks..");
    }
    else{
      print("All Notes: \n ");
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
