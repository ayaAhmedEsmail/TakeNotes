import 'Note.dart';
import 'dart:io';

class SaveInFile {
  Future<void> saveNotesToFile(Note note) async {
    final filename = 'notes.txt';
    final content = '${note.title} - ${note.content}  \n';
    try {
       File(filename).writeAsStringSync(content + '\n', mode: FileMode.append);
      print("Notes saved to file successfully.");
    } catch (e) {
      print("Error saving notes: $e");
    }
  }
}