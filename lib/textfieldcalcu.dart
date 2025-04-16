import 'package:flutter/material.dart';

class CalcuText extends StatefulWidget {
  CalcuText({super.key});

  @override
  State<CalcuText> createState() => _CalcuTextState();
}

class _CalcuTextState extends State<CalcuText> {
  var num1Controller = TextEditingController();
  var num2Controller = TextEditingController();
  var result = "";

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                labelText: "Enter first number",
                prefixIcon: Icon(Icons.line_weight),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => num1Controller.clear(),
                ),
                hintText: "Enter first number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
            SizedBox(height: 10),
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(
                labelText: "Enter second number",
                prefixIcon: Icon(Icons.line_weight),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => num2Controller.clear(),
                ),
                hintText: "Enter second number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    var num1 = int.tryParse(num1Controller.text);
                    var num2 = int.tryParse(num2Controller.text);
                    if (num1 != null && num2 != null) {
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
                    var num1 = int.tryParse(num1Controller.text);
                    var num2 = int.tryParse(num2Controller.text);
                    if (num1 != null && num2 != null) {
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
                    var num1 = int.tryParse(num1Controller.text);
                    var num2 = int.tryParse(num2Controller.text);
                    if (num1 != null && num2 != null) {
                      setState(() {
                        result = "${num1 * num2}";
                      });
                    }
                  },
                  icon: Icon(Icons.close),
                  label: Text("Multiply"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    var num1 = double.tryParse(num1Controller.text);
                    var num2 = double.tryParse(num2Controller.text);
                    if (num1 != null && num2 != null) {
                      if (num2 == 0) {
                        setState(() {
                          result = "Cannot divide by zero";
                        });
                      } else {
                        setState(() {
                          result = (num1 / num2).toStringAsFixed(2);
                        });
                      }
                    }
                  },
                  icon: Icon(Icons.percent),
                  label: Text("Divide"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
