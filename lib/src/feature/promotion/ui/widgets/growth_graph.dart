import 'package:flutter/material.dart';
import 'dart:math' as math;

class GrowthGraph extends StatefulWidget {
  final Color color;
  final Duration animationDelay;
  final double strokeWidth;
  final bool enableAnimation;
  const GrowthGraph({
    super.key,
    this.color = const Color(0xffffffff),
    this.animationDelay = Duration.zero,
    this.strokeWidth = 20.0,
    this.enableAnimation = true,
  });

  @override
  State<GrowthGraph> createState() => _GrowthGraphState();
}

class _GrowthGraphState extends State<GrowthGraph>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // 애니메이션이 활성화된 경우에만 딜레이 후 애니메이션 시작
    if (widget.enableAnimation) {
      Future.delayed(widget.animationDelay, () {
        if (mounted) {
          _controller.forward();
        }
      });
    } else {
      // 애니메이션 비활성화 시 즉시 완료 상태로
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 600,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
            painter: MultiGraphPainter(
              color: widget.color,
              progress: _animation.value,
              strokeWidth: widget.strokeWidth,
            ),
          );
        },
      ),
    );
  }
}

class MultiGraphPainter extends CustomPainter {
  final Color color;
  final double progress;
  final double strokeWidth;

  MultiGraphPainter({
    this.color = const Color(0xffffffff),
    this.progress = 1.0,
    this.strokeWidth = 20.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.square;

    final path = Path();

    // 1. 설정값들
    const int repetitions = 4; // 계단 반복 횟수
    double startX = size.width * 0.05;
    double startY = size.height * 0.85; // 0.9에서 0.85로 조정하여 상단 여유 공간 확보

    // 한 번의 계단(오른쪽+위)가 차지할 가로 너비와 높이
    double stepWidth = (size.width * 0.9) / repetitions;
    double stepHeight = size.height * 0.14; // 0.15에서 0.14로 조정

    // 2. 시작점으로 이동
    path.moveTo(startX, startY);

    double currentX = startX;
    double currentY = startY;

    for (int i = 0; i < repetitions; i++) {
      // 1. 오른쪽으로 수평 이동 (첫 번째만 절반)
      double horizontalMove = stepWidth;
      if (i == 0) {
        horizontalMove = stepWidth * 0.5; // 첫 번째는 절반
      }

      currentX += horizontalMove;
      path.lineTo(currentX, currentY);

      // 2. 위로 수직 이동 (마지막만 절반)
      double verticalMove = stepHeight;
      if (i == repetitions - 1) {
        verticalMove = stepHeight * 0.5; // 마지막은 절반
      }

      currentY -= verticalMove;
      path.lineTo(currentX, currentY);
    }

    // 마지막 수직 상승이 시작하는 X 좌표 저장
    final lastVerticalX = currentX;

    // PathMetrics를 사용해서 progress에 따라 path 일부만 그리기
    final pathMetrics = path.computeMetrics();
    final pathMetric = pathMetrics.first;
    final currentLength = pathMetric.length * progress;
    final extractPath = pathMetric.extractPath(
      0.0,
      currentLength,
    );

    // 선 그리기 (그림자 효과 포함)
    canvas.drawPath(extractPath,
        paint..maskFilter = const MaskFilter.blur(BlurStyle.solid, 2));
    canvas.drawPath(extractPath, paint..maskFilter = null);

    // 현재 위치의 tangent를 구해서 화살표 그리기
    if (progress > 0.0 && currentLength > 0) {
      final tangent = pathMetric.getTangentForOffset(currentLength);
      if (tangent != null) {
        // 마지막 수직 상승 부분인지 확인 (X 좌표가 lastVerticalX와 같은지)
        double arrowAngle = tangent.angle;
        if ((tangent.position.dx - lastVerticalX).abs() < 1.0) {
          arrowAngle = -math.pi / 2; // 마지막 수직 상승은 강제로 위쪽 방향
        }
        _drawArrowHead(canvas, tangent.position, arrowAngle);
      }
    }
  }

  // 화살표 머리를 그리는 별도 메서드
  void _drawArrowHead(Canvas canvas, Offset position, double angle) {
    final arrowSize = strokeWidth * 1.5;

    // 화살표의 실제 끝 부분 (position에서 angle 방향으로 더 나감)
    double tipX = position.dx + arrowSize * math.cos(angle);
    double tipY = position.dy + arrowSize * math.sin(angle);

    final path = Path();
    // 화살표 끝에서 시작
    path.moveTo(tipX, tipY);
    // 오른쪽 날개
    path.lineTo(
      position.dx - arrowSize * math.cos(angle + math.pi / 3),
      position.dy - arrowSize * math.sin(angle + math.pi / 3),
    );
    // 왼쪽 날개
    path.lineTo(
      position.dx - arrowSize * math.cos(angle - math.pi / 3),
      position.dy - arrowSize * math.sin(angle - math.pi / 3),
    );
    path.close();

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant MultiGraphPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.color != color;
  }
}
