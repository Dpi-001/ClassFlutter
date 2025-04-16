import 'package:flutter/material.dart';

class Formexample extends StatefulWidget {
  Formexample({super.key}); // const clear hunxw for final

  @override
  State<Formexample> createState() => _FormexampleState();
}

class _FormexampleState extends State<Formexample> {
  final GlobalKey<FormState> _nameFormKey = GlobalKey();

  bool switchValue = false;
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Form(
          key: _nameFormKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your name",
                  labelText: "Enter your name test",
                  prefixIcon: Icon(Icons.person),
                  //oneditingComplete:  saved value when it  is correct
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  } else if (value.length < 3) {
                    return "Name must be at least 3 characters long";
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  print(newValue!);
                },
              ),
              SizedBox(height: 20),
              Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              SizedBox(height: 20),

              Checkbox(
                value: checkValue,
                onChanged: (value) {
                  setState(() {
                    checkValue = value ?? false;
                  });
                },
              ),
              SizedBox(height: 20),

              SizedBox(height: 20),

              FilledButton.tonal(
                onPressed: () {
                  if (!_nameFormKey.currentState!.validate()) {
                    return;
                  }
                  _nameFormKey.currentState!.save();
                  // Perform any action you want with the saved value
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
