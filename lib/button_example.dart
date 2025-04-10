import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Example')),
      body: ListView(
        children: [
          FilledButton(
            onPressed: () {},
            child: Text("Button 1"),
          ), //filled button
          FilledButton.tonal(
            onPressed: () {},
            child: Text("Button 2"),
          ), //filledbutton tonal button
          FilledButton.tonalIcon(
            onPressed: () {},
            label: Text("Add"),
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          IconButton.filled(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          TextButton(onPressed: () {}, child: Text("ReadMore")),
          ElevatedButton(onPressed: () {}, child: Text("ReadMore")),
          GestureDetector(
            onDoubleTap: () {
              print("Double Tap");
            },
            onLongPress: () {
              print("Long Press");
            },
            child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("InkWell Tap");
            },
            child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
