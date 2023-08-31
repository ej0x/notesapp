import 'package:flutter/material.dart';
import 'package:notesapp/models/note_moder.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              note.body,
              style: const TextStyle(fontSize: 20),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
