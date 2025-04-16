import 'package:flutter/material.dart';

class CalcuTextForm extends StatefulWidget {
  CalcuTextForm({super.key});

  @override
  State<CalcuTextForm> createState() => _CalcuTextState();
}

class _CalcuTextState extends State<CalcuTextForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TextField Calculator",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_comment))],
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),

              // First Input
              TextFormField(
                controller: num1Controller,
                decoration: InputDecoration(
                  labelText: "Enter a first Number",
                  prefixIcon: Icon(Icons.line_weight),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => num1Controller.clear(),
                  ),
                  hintText: "Enter a first Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  }
                  if (int.tryParse(value) == null) {
                    return "Enter a valid number";
                  }
                  return null;
                },
                maxLength: 10,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),

              // Second Input
              TextFormField(
                controller: num2Controller,
                decoration: InputDecoration(
                  labelText: "Enter a second Number",
                  prefixIcon: Icon(Icons.line_weight),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => num2Controller.clear(),
                  ),
                  hintText: "Enter a second Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  }
                  if (int.tryParse(value) == null) {
                    return "Enter a valid number";
                  }
                  return null;
                },
                maxLength: 10,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),

              // Buttons
              Wrap(
                spacing: 20,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        int num1 = int.parse(num1Controller.text);
                        int num2 = int.parse(num2Controller.text);
                        setState(() {
                          result = "${num1 + num2}";
                        });
                      }
                    },
                    icon: Icon(Icons.add),
                    label: Text("Add"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        int num1 = int.parse(num1Controller.text);
                        int num2 = int.parse(num2Controller.text);
                        setState(() {
                          result = "${num1 - num2}";
                        });
                      }
                    },
                    icon: Icon(Icons.remove),
                    label: Text("Subtract"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        int num1 = int.parse(num1Controller.text);
                        int num2 = int.parse(num2Controller.text);
                        setState(() {
                          result = "${num1 * num2}";
                        });
                      }
                    },
                    icon: Icon(Icons.clear),
                    label: Text("Multiply"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        int num1 = int.parse(num1Controller.text);
                        int num2 = int.parse(num2Controller.text);
                        if (num2 == 0) {
                          setState(() {
                            result = "Cannot divide by 0";
                          });
                        } else {
                          setState(() {
                            double division = num1 / num2;
                            result = division.toStringAsFixed(2);
                          });
                        }
                      }
                    },
                    icon: Icon(Icons.horizontal_rule),
                    label: Text("Divide"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
