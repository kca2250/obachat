import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        hintText: '何かを入力してください',
        contentPadding: const EdgeInsets.all(14.5),
        suffixIcon: Icon(
          Icons.send_rounded,
          color: Colors.deepOrange[300],
        ),
      ),
    );
  }
}
