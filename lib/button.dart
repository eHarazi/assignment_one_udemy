import 'package:flutter/material.dart';

class ChangeButton extends StatelessWidget {
  const ChangeButton(
    this.changetext, {
    super.key,
  });

  final VoidCallback changetext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: changetext,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          fixedSize: const Size(200, 50),
        ),
        child: const Text(
          'Change',
          style: TextStyle(
            fontSize: 20,
          ),
        ));
  }
}
