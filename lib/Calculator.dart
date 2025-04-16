import 'package:flutter/material.dart';

class Calculatoreg extends StatefulWidget {
  const Calculatoreg({super.key});

  @override
  State<Calculatoreg> createState() => _CalculatoregState();
}

class _CalculatoregState extends State<Calculatoreg> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      color: btncolor,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(btntxt, style: TextStyle(fontSize: 20, color: txtcolor)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(color: const Color.fromARGB(255, 223, 223, 223)),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //calculator display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //herer buttons function will be called where we pass some arguments
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('/', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //herer buttons function will be called where we pass some arguments
                calcbutton('7', Colors.grey, Colors.black),
                calcbutton('8', Colors.grey, Colors.black),
                calcbutton('9', Colors.grey, Colors.black),
                calcbutton('*', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //herer buttons function will be called where we pass some arguments
                calcbutton('4', Colors.grey, Colors.black),
                calcbutton('5', Colors.grey, Colors.black),
                calcbutton('6', Colors.grey, Colors.black),
                calcbutton('-', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //herer buttons function will be called where we pass some arguments
                calcbutton('1', Colors.grey, Colors.black),
                calcbutton('2', Colors.grey, Colors.black),
                calcbutton('3', Colors.grey, Colors.black),
                calcbutton('+', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //herer buttons function will be called where we pass some arguments
                calcbutton('00', Colors.grey, Colors.black),
                calcbutton('0', Colors.grey, Colors.black),
                calcbutton('.', Colors.grey, Colors.black),
                calcbutton('=', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
