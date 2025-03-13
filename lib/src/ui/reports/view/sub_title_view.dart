import 'package:flutter/material.dart';

class SubTitleView extends StatelessWidget {
  final String label;
  const SubTitleView({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const SizedBox(
        height: 18,
      ),
      Container(
          width: double.maxFinite,
          height: 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xffd9d9d9))),
    ]);
  }
}
