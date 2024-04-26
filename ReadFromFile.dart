import 'dart:async';
import 'dart:io';
class ReadFromFile{
  Future<void> readNotesFromFile() async {
    try {
      final file = File('notes.txt'); // File object
      final contents = await file.readAsString(); // Read asynchronously
      print(contents);
    } catch (e) {
      print("Error reading notes: $e");
    }
  }  }
