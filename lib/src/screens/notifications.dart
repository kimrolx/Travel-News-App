import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications Test Page"),
      ),
      body: const Center(
        child: Text("This is the Notifications test page."),
      ),
    );
  }
}
