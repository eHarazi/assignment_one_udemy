import 'package:flutter/material.dart';
import 'button.dart';
import 'text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _textItem = 0;

  void changeText() {
    setState(() {
      if (_textItem == 0) {
        _textItem += 1;
      } else {
        _textItem -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment One',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Assignment One'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextWidget(_textItem),
              ChangeButton(changeText),
            ],
          ))),
    );
  }
}
