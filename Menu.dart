import 'dart:io';
import 'AddNotes.dart';
import 'Home.dart';
import 'ShowNotes.dart';

class Menu extends Homepage {
  AddNote addNote=AddNote();
  ShowNotes showNotes = ShowNotes();
  late int input;
  @override
  void showHomePageMenu(){

    print('''
--- Note Taking App ---
    1. Add Note
    2. Show Notes
    3. Edit Note
    4. Delete Note
    5. Exit..    ''');
    stdout.write("Enter your choice: ");
    String input = stdin.readLineSync()!;
    show(input);
  }

  @override
  void show(input) {
   switch (input) {
      case '1':
      // add note
        print("Add Notes..");
        stdout.write("Enter task title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Enter task content: ");
        String content = stdin.readLineSync()!;
        addNote.addNote(title, content);
        stdout.write("Note successfully added. \n \n \n");
        showHomePageMenu();
      case '2':
      // Show notes
        stdout.write("Show Notes \n ");
        showNotes.showNotes();
        showHomePageMenu();
      case '3':
      // Edit notes
        print("Edit Notes..");
      case '4':
      //Delete Note
        print("Delete Notes..");

      case '5':
      // Exit..
        print("Exit..");
    }
  }
}
