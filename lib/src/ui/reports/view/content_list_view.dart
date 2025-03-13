import 'package:flutter/material.dart';

class ContentListView extends StatelessWidget {
  final List<String> contents;
  const ContentListView({super.key, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        contents.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Text(contents[index],
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              )),
        ),
      ),
    );
  }
}
