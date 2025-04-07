import 'package:flutter/material.dart';

class Rowcolumneg extends StatelessWidget {
  const Rowcolumneg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      // body: Padding(
      //   padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Text("This is row", style: TextStyle(fontSize: 28)),
      //       Container(width: 200, height: 200, color: Colors.blue),
      //     ],
      //   ),
      // ),
      // body: Row(
      //   children: [
      //     Text("This is row", style: TextStyle(fontSize: 28)),
      //     Container(width: 100, height: 100, color: Colors.blue),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisSize: MainAxisSize.max,
      //       children: [
      //         // Text("This is column", style: TextStyle(fontSize: 28)),
      //         Container(width: 100, height: 50, color: Colors.blue),
      //         Text("Text", style: TextStyle(fontSize: 20)),
      //         Container(width: 100, height: 50, color: Colors.red),
      //       ],
      //     ),
      //   ],
      // ),

      //  Container inside two column and text betten them and row
      body: Center(
        child: Container(
        width: 300,
        height: 300,
        alignment: Alignment.center,
        color: Colors.amber,

        padding: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 100, height: 50, color: Colors.blue),
                Text("This is column", style: TextStyle(fontSize: 12)),
                Container(width: 100, height: 50, color: Colors.blue),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [Container(width: 100, height: 50, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
