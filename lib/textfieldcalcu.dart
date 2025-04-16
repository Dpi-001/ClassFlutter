import 'package:flutter/material.dart';

class CalcuText extends StatefulWidget {
  CalcuText({super.key});

  @override
  State<CalcuText> createState() => _CalcuTextState();
}

// controller ma .clear vaniii xw haii
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            result,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),
          //refacto with size box
          SizedBox(
            width: double.infinity,
            height: 100,
            child: TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                labelText: "Enter a first Number",

                prefixIcon: Icon(Icons.line_weight),
                suffixIcon: Icon(Icons.one_k),
                hintText: "Enter a first Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),

              maxLength: 10,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            controller: num2Controller,
            decoration: InputDecoration(
              labelText: "Enter a second Number",

              prefixIcon: Icon(Icons.line_weight),
              suffixIcon: Icon(Icons.two_k),
              hintText: "Enter a second Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),

            maxLength: 10,
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 5),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 60, right: 40),

            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    var num1 = num1Controller.text;
                    var num2 = num2Controller.text;
                    if (num1 != "" || num2 != "") {
                      var result = int.parse(num1) + int.parse(num2);
                    }
                    // setState(() {
                    //     result = "$msg \n\n BMI is ${bmi.toStringAsFixed(2)}";
                    //   });

                    setState(() {
                      result = "${int.parse(num1) + int.parse(num2)}";
                    });
                    // Perform calculation here
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text("Calculate"),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    var num1 = num1Controller.text;
                    var num2 = num2Controller.text;
                    if (num1 != "" || num2 != "") {
                      var result = int.parse(num1) - int.parse(num2);
                    }
                    setState(() {
                      result = " ${int.parse(num1) - int.parse(num2)}";
                    });
                    // Perform calculation here
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.remove),
                      SizedBox(width: 5),
                      Text("Calculate"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
