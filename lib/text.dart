import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.item, {
    super.key,
  });

  final int item;

  @override
  Widget build(BuildContext context) {
    var outputText = [
      'First item text',
      'Second item text',
    ];
    return Text(outputText[item],
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 28,
        ));
  }
}
