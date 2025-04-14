import 'package:flutter/material.dart';

class BmiC extends StatefulWidget {
  const BmiC({super.key});

  @override
  State<BmiC> createState() => _BmiCState();
}

class _BmiCState extends State<BmiC> {
  var wtController = TextEditingController();
  var ftController = TextEditingController(); // height in feet
  var inController = TextEditingController(); // height in inches

  var result = "";

  var bgcolor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 216, 235),
      ),

      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 350,

            //wrap with Container body : column  , children: [
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Body Mass Index (BMI) is a simple calculation using a person\'s height and weight. It is defined as the individual\'s body mass divided by the square of their height.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,

                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    labelText: 'Weight (kg)',
                    prefixIcon: Icon(Icons.line_weight),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 20),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    labelText: 'Enter your height (ft)',
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 20),

                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    labelText: 'Enter your height (inches)',
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text;
                    var ft = ftController.text;
                    var inch = inController.text;
                    if (wt != "" || ft != "" || inch != "") {
                      var weight = double.parse(wt);
                      var iFeet = double.parse(ft);
                      var iInch = double.parse(inch);

                      var totalInch = (iFeet * 12) + iInch;
                      var totalCm = totalInch * 2.54;
                      var totalM = totalCm / 100;
                      var bmi = weight / (totalM * totalM);

                      var msg = "";

                      if (bmi > 25) {
                        msg = "You are overweight";
                        bgcolor = Colors.red;
                      } else if (bmi < 18.5) {
                        msg = "You are underweight";
                        bgcolor = Colors.yellow;
                      } else {
                        msg = "You are healthy";
                        bgcolor = Colors.green;
                      }

                      setState(() {
                        result = "$msg \n\n BMI is ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please enter valid data";
                      });
                    }
                  },
                  child: Text("Calculate"),
                ),

                SizedBox(height: 30),
                Text(
                  result,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

                  textAlign: TextAlign.center,
                ), // Placeholder for BMI result
              ],
            ),
          ),
        ),
      ),
    );
  }
}
