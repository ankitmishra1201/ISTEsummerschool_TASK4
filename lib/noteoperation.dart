import 'note.dart';
import 'package:flutter/material.dart';

class Noteoperation extends ChangeNotifier{
  final List<Note> _notes = <Note>[];
  List<Note> get getNotes{
    return _notes;

  }
  void addnewnote(String title, String description){
    Note note=Note(title, description);
    _notes.add(note);
    notifyListeners();
  }

}