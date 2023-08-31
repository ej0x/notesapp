import 'package:flutter/material.dart';
import 'package:notesapp/screens/create_note.dart';
import 'package:notesapp/models/note_moder.dart';
import 'package:notesapp/screens/widgets/note_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> notes = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteCard(note: notes[index], index: index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CreateNote(
                onNewNoteCreated: onNewNoteCreated,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void onNewNoteCreated(Note note) {
    notes.add(note);
    setState(() {});
  }

  void onNoteDelete(int index) {
    notes.removeAt(index);
    setState(() {});
  }
}
