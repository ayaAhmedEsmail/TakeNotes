import 'Note.dart';
import 'dart:io';

class SaveInFile {
  Future<void> saveNotesToFile(Note note) async {
    final filename = 'notes.txt';
    final content = '${note.title} - ${note.content}';
    try {
      await File(filename).writeAsString(content);
      print("Notes saved to file successfully.");
    } catch (e) {
      print("Error saving notes: $e");
    }
  }
}