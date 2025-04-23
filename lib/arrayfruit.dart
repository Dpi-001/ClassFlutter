import 'package:flutter/material.dart';

class Fruitarrayeg extends StatelessWidget {
  const Fruitarrayeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fruit Array Example')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter fruit name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a fruit name';
                } else if (value.length < 3) {
                  return 'Please enter a fruit name with at least 3 characters';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
