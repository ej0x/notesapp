import 'package:flutter/material.dart';
import 'package:notesapp/models/note_moder.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
