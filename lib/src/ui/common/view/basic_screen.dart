import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  final Widget child;
  const BasicScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100, bottom: 10),
                    child: SizedBox(
                      width: 1040,
                      child: child,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
