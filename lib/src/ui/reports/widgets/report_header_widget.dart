import 'package:flutter/material.dart';

class ReportHeaderWidget extends Text {
  final String label;
  const ReportHeaderWidget(this.label, {super.key})
      : super(label,
            style: const TextStyle(
                color: Color(0xff000000),
                fontSize: 20,
                fontWeight: FontWeight.bold));
}
