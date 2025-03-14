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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.5),
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                      color: Color(0xff000000), shape: BoxShape.circle),
                ),
              ),
              Text(contents[index],
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
