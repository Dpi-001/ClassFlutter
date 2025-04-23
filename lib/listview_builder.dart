import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Use CustomListView instead of ListView
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Text(
            i.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.black),
          );
        },
        itemCount: 100,
      ),
    );
  }
}
