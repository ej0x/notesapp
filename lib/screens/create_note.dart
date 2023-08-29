import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({super.key});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Note"),
      ),
      body: Column(
        children: [
          TextFormField(
            style: const TextStyle(
              fontSize: 28,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Title",
            ),
          ),
          TextFormField(
            style: const TextStyle(
              fontSize: 18,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Description",
            ),
          ),
        ],
      ),
    );
  }
}
