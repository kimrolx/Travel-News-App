import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmark Test Page"),
      ),
      body: const Center(
        child: Text("This is the Bookmark test page."),
      ),
    );
  }
}
