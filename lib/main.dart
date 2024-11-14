import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Tap & Match"),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Try Again',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/data-science.png'),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/monitor.png'),
            )),
          ],
        ),
      ],
    );
  }
}
