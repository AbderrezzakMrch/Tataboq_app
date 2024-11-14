import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("Tap & Match"),
          backgroundColor: Colors.indigo[800],
        ),
        body: const ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Try Again',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('You pressed left pic');
                },
                child: Image.asset('images/data-science.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print("You pressed left right");
                },
                child: Image.asset('images/monitor.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
