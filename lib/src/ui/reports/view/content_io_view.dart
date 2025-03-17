import 'package:flutter/material.dart';

class ContentIOView extends StatelessWidget {
  final List<(String, String)> contents;
  const ContentIOView({super.key, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          contents.length,
          (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      "예제 입력${index + 1}",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xffefefef),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      contents[index].$1,
                      style: TextStyle(
                          color: const Color(0xff000000).withOpacity(.48),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      "예제 출력${index + 1}",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xffefefef),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      contents[index].$2,
                      style: TextStyle(
                          color: const Color(0xff000000).withOpacity(.48),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              )),
    );
  }
}
