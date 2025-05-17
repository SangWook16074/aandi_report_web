import 'package:flutter/material.dart';

class TrianglePoint extends StatelessWidget {
  const TrianglePoint({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      height: 15,
      child: CustomPaint(
        size: const Size(16, 15),
        painter: TrianglePainter(),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height / 2);
    // path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, Paint()..color = Colors.black);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
