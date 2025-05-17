import 'package:flutter/material.dart';

class PlainTextContentView extends StatelessWidget {
  final String content;
  const PlainTextContentView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        color: Color(0xff000000),
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
