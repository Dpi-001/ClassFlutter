import 'package:flutter/material.dart';
import 'package:flutter_lictproject/second_screen.dart';

class Fruitarrayeg extends StatefulWidget {
  Fruitarrayeg({super.key});

  @override
  State<Fruitarrayeg> createState() => _FruitarrayegState();
}

class _FruitarrayegState extends State<Fruitarrayeg> {
  final GlobalKey<FormState> _addFruitFormKey = GlobalKey();

  //yo line ma garyem class ko constructor banaune

  List<String> fruitNames =
      []; //yo line ma garyem array ko value haru store garne

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fruit Array Example')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              key: _addFruitFormKey,
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
                    onSaved: (newValue) {
                      setState(() {
                        fruitNames.add(newValue!);
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (!_addFruitFormKey.currentState!.validate()) {
                        return;
                      }
                      _addFruitFormKey.currentState!.save();
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
            FilledButton.tonal(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (context) => SecondScreeneg(fruitsNames: fruitNames),
                  ),
                );
              },
              child: Text("Go to next page"),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemBuilder: (ctx, i) => Text(fruitNames[i]),
                itemCount: fruitNames.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
