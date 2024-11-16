import 'package:flutter/material.dart';
import 'dart:math';

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

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void changeImage() {
    leftImageNumber = Random().nextInt(6) + 1;
    rightImageNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? 'You Win Congrats'
              : 'Try Again',
          style: const TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset('images/image-$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset('images/image-$rightImageNumber.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
