import 'dart:async';
import 'dart:io';

class ReadFromFile {
  final file = File('notes.txt');

  Future<void> readNotesFromFile() async {
    try {
      final contents = file.readAsStringSync();
      print(contents);
    } catch (e) {
      print('Error reading file: $e');
    }
  }
}
