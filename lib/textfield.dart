import 'package:flutter/material.dart';

class TextfieldExample extends StatefulWidget {
  TextfieldExample({super.key});

  @override
  State<TextfieldExample> createState() => _TextfieldExampleState();
}

class _TextfieldExampleState extends State<TextfieldExample> {
  final TextEditingController dummyTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Example"),
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 216, 235),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        child: Column(
          children: [
            TextField(
              controller: dummyTextController,
              decoration: InputDecoration(
                labelText: 'Type a number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                  borderSide: const BorderSide(color: Colors.grey, width: 10),
                ),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                prefixIcon: const Icon(Icons.person),
                suffixIcon: Icon(Icons.edit_note),
                floatingLabelBehavior:
                    FloatingLabelBehavior.never, //does not show label in up
                counterText: "", //to remove the counter text
              ),
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.number,
              cursorColor: Colors.blue,
              cursorHeight: 25,
              cursorWidth: 2,
              maxLength: 10,
              onChanged: (value) {
                setState(() {
                  dummyTextController.text = value;
                });
              },
              // onSubmitted: , in form of submit button
              // readOnly: false,
              // maxLines: 4,
              // minLines: 1,
            ),
            Text(dummyTextController.text),
          ],
        ),
      ),
    );
  }
}
