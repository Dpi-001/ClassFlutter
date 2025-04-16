import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calceg extends StatefulWidget {
  const Calceg({super.key});

  @override
  State<Calceg> createState() => _CalculatoreggState();
}

class _CalculatoreggState extends State<Calceg> {
  String userInput = '';
  String result = '0';

  void _buttonPressed(String value) {
    setState(() {
      if (value == 'AC') {
        userInput = '';
        result = '0';
      } else if (value == '=') {
        try {
          Parser p = Parser();
          Expression exp = p.parse(
            userInput.replaceAll('×', '*').replaceAll('÷', '/'),
          );
          ContextModel cm = ContextModel();
          result = exp.evaluate(EvaluationType.REAL, cm).toString();
        } catch (e) {
          result = 'Error';
        }
      } else if (value == '+/-') {
        if (userInput.isNotEmpty && userInput[0] != '-') {
          userInput = '-$userInput';
        } else if (userInput.startsWith('-')) {
          userInput = userInput.substring(1);
        }
      } else {
        userInput += value;
      }
    });
  }

  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => _buttonPressed(btntxt),
        style: ElevatedButton.styleFrom(
          backgroundColor: btncolor,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        child: Text(btntxt, style: TextStyle(fontSize: 24, color: txtcolor)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(color: Color.fromARGB(255, 223, 223, 223)),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // User input display
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(20),
              child: Text(
                userInput,
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),

            // Result display
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(20),
              child: Text(
                result,
                style: const TextStyle(color: Colors.white, fontSize: 48),
              ),
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('÷', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('7', Colors.grey, Colors.black),
                calcbutton('8', Colors.grey, Colors.black),
                calcbutton('9', Colors.grey, Colors.black),
                calcbutton('×', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('4', Colors.grey, Colors.black),
                calcbutton('5', Colors.grey, Colors.black),
                calcbutton('6', Colors.grey, Colors.black),
                calcbutton('-', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('1', Colors.grey, Colors.black),
                calcbutton('2', Colors.grey, Colors.black),
                calcbutton('3', Colors.grey, Colors.black),
                calcbutton('+', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('00', Colors.grey, Colors.black),
                calcbutton('0', Colors.grey, Colors.black),
                calcbutton('.', Colors.grey, Colors.black),
                calcbutton('=', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
