import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:visibility_detector/visibility_detector.dart';

class GrowthTogetherWidget extends StatefulWidget {
  final Color primaryColor;
  final Color secondaryColor;
  final double primaryStrokeWidth;
  final double secondaryStrokeWidth;
  final bool enableAnimation;
  final Duration secondaryDelay;

  const GrowthTogetherWidget({
    super.key,
    this.primaryColor = const Color(0xff3B83F6),
    this.secondaryColor = const Color(0xffffffff),
    this.primaryStrokeWidth = 20.0,
    this.secondaryStrokeWidth = 15.0,
    this.enableAnimation = true,
    this.secondaryDelay = const Duration(milliseconds: 500),
  });

  @override
  State<GrowthTogetherWidget> createState() => _GrowthTogetherWidgetState();
}

class _GrowthTogetherWidgetState extends State<GrowthTogetherWidget>
    with TickerProviderStateMixin {
  late AnimationController _primaryController;
  late AnimationController _secondaryController;
  late Animation<double> _primaryAnimation;
  late Animation<double> _secondaryAnimation;
  bool _hasAnimated = false;
  final Key _visibilityKey = UniqueKey();

  @override
  void initState() {
    super.initState();

    // Primary graph animation
    _primaryController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _primaryAnimation = CurvedAnimation(
      parent: _primaryController,
      curve: Curves.easeInOut,
    );

    // Secondary graph animation
    _secondaryController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _secondaryAnimation = CurvedAnimation(
      parent: _secondaryController,
      curve: Curves.easeInOut,
    );

    if (!widget.enableAnimation) {
      _primaryController.value = 1.0;
      _secondaryController.value = 1.0;
    }
  }

  void _startAnimation() {
    if (_hasAnimated) return;
    setState(() {
      _hasAnimated = true;
    });
    _primaryController.forward();
    Future.delayed(widget.secondaryDelay, () {
      if (mounted) {
        _secondaryController.forward();
      }
    });
  }

  @override
  void dispose() {
    _primaryController.dispose();
    _secondaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: _visibilityKey,
      onVisibilityChanged: (info) {
        if (widget.enableAnimation &&
            !_hasAnimated &&
            info.visibleFraction == 1.0) {
          _startAnimation();
        }
      },
      child: AspectRatio(
        aspectRatio: 1.25,
        child: AnimatedBuilder(
          animation: Listenable.merge([_primaryAnimation, _secondaryAnimation]),
          builder: (context, child) {
            return CustomPaint(
              painter: GrowthTogetherPainter(
                primaryColor: widget.primaryColor,
                secondaryColor: widget.secondaryColor,
                primaryProgress: _primaryAnimation.value,
                secondaryProgress: _secondaryAnimation.value,
                primaryStrokeWidth: widget.primaryStrokeWidth,
                secondaryStrokeWidth: widget.secondaryStrokeWidth,
              ),
            );
          },
        ),
      ),
    );
  }
}

class GrowthTogetherPainter extends CustomPainter {
  final Color primaryColor;
  final Color secondaryColor;
  final double primaryProgress;
  final double secondaryProgress;
  final double primaryStrokeWidth;
  final double secondaryStrokeWidth;

  GrowthTogetherPainter({
    required this.primaryColor,
    required this.secondaryColor,
    required this.primaryProgress,
    required this.secondaryProgress,
    required this.primaryStrokeWidth,
    required this.secondaryStrokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw graphs with alternating z-order in sections
    _drawInterleavedGraphs(canvas, size);
  }

  void _drawInterleavedGraphs(Canvas canvas, Size size) {
    // Divide the graph into 4 sections and alternate z-order
    const int sections = 4;
    final double offX = size.width * 0.08;
    final double offY = size.height * 0.08;

    // First pass: draw blur shadows for all graphs (no clipping)
    canvas.save();
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    _drawGraphBlur(
        canvas, size, secondaryColor, secondaryProgress, secondaryStrokeWidth,
        offsetX: -offX, offsetY: offY, extraLastRise: offY);
    _drawGraphBlur(
        canvas, size, primaryColor, primaryProgress, primaryStrokeWidth,
        offsetX: 0, offsetY: 0);
    canvas.restore();

    // Second pass: draw all lines with sectioned z-order
    for (int i = 0; i < sections; i++) {
      double sectionStart = i / sections;
      double sectionEnd = (i + 1) / sections;

      // Expand clip rect to prevent edge clipping
      // Add padding equal to the larger stroke width
      final padding = math.max(primaryStrokeWidth, secondaryStrokeWidth);

      final clipRect = Rect.fromLTWH(
        size.width * sectionStart - (i > 0 ? padding : 0),
        0,
        size.width * (sectionEnd - sectionStart) +
            (i > 0 ? padding : 0) +
            (i < sections - 1 ? padding : 0),
        size.height,
      );

      // Alternate which graph is on top
      bool primaryOnTop = i % 2 == 0;

      canvas.save();
      canvas.clipRect(clipRect);

      if (primaryOnTop) {
        // 1. 보조선(흰색) 세트 (뒤에 깔림)
        _drawGraphLine(canvas, size, secondaryColor, secondaryProgress,
            secondaryStrokeWidth,
            offsetX: -offX, offsetY: offY, extraLastRise: offY);

        // 2. 주선(파란색) 세트 (위에 덮음)
        _drawGraphLine(
            canvas, size, primaryColor, primaryProgress, primaryStrokeWidth,
            offsetX: 0, offsetY: 0);
      } else {
        // 1. 주선(파란색) 세트 (뒤에 깔림)
        _drawGraphLine(
            canvas, size, primaryColor, primaryProgress, primaryStrokeWidth,
            offsetX: 0, offsetY: 0);

        // 2. 보조선(흰색) 세트 (위에 덮음)
        _drawGraphLine(canvas, size, secondaryColor, secondaryProgress,
            secondaryStrokeWidth,
            offsetX: -offX, offsetY: offY, extraLastRise: offY);
      }

      canvas.restore();
    }

    // Third pass: draw all arrow heads on top (no clipping)
    _drawArrowHeads(canvas, size);
  }

  void _drawGraphBlur(
    Canvas canvas,
    Size size,
    Color color,
    double progress,
    double strokeWidth, {
    required double offsetX,
    required double offsetY,
    double extraLastRise = 0.0,
  }) {
    if (progress <= 0) return;

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.square
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);

    final path = Path();

    // Configuration
    const int repetitions = 4;
    double startX = size.width * 0.05 + offsetX;
    double startY = size.height * 0.85 + offsetY;

    double stepWidth = (size.width * 0.9) / repetitions;
    double stepHeight = size.height * 0.22;

    // Build complete path
    path.moveTo(startX, startY);

    double currentX = startX;
    double currentY = startY;

    for (int i = 0; i < repetitions; i++) {
      // Horizontal movement
      double horizontalMove = stepWidth;
      if (i == 0) {
        horizontalMove = stepWidth * 0.5;
      }

      currentX += horizontalMove;
      path.lineTo(currentX, currentY);

      // Vertical movement
      double verticalMove = stepHeight;
      if (i == repetitions - 1) {
        verticalMove = stepHeight * 0.5 + extraLastRise;
      }

      currentY -= verticalMove;
      path.lineTo(currentX, currentY);
    }

    // Calculate path metrics
    final pathMetrics = path.computeMetrics();
    final pathMetric = pathMetrics.first;
    final totalLength = pathMetric.length;
    final currentLength = totalLength * progress;

    if (currentLength > 0) {
      final extractPath = pathMetric.extractPath(0, currentLength);

      // Draw blur shadow only
      canvas.drawPath(extractPath, paint);
    }
  }

  void _drawGraphLine(
    Canvas canvas,
    Size size,
    Color color,
    double progress,
    double strokeWidth, {
    required double offsetX,
    required double offsetY,
    double extraLastRise = 0.0,
  }) {
    if (progress <= 0) return;

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.square;

    final path = Path();

    // Configuration
    const int repetitions = 4;
    double startX = size.width * 0.05 + offsetX;
    double startY = size.height * 0.85 + offsetY;

    double stepWidth = (size.width * 0.9) / repetitions;
    double stepHeight = size.height * 0.22;

    // Build complete path
    path.moveTo(startX, startY);

    double currentX = startX;
    double currentY = startY;

    for (int i = 0; i < repetitions; i++) {
      // Horizontal movement
      double horizontalMove = stepWidth;
      if (i == 0) {
        horizontalMove = stepWidth * 0.5;
      }

      currentX += horizontalMove;
      path.lineTo(currentX, currentY);

      // Vertical movement
      double verticalMove = stepHeight;
      if (i == repetitions - 1) {
        verticalMove = stepHeight * 0.5 + extraLastRise;
      }

      currentY -= verticalMove;
      path.lineTo(currentX, currentY);
    }

    // Calculate path metrics
    final pathMetrics = path.computeMetrics();
    final pathMetric = pathMetrics.first;
    final totalLength = pathMetric.length;
    final currentLength = totalLength * progress;

    if (currentLength > 0) {
      final extractPath = pathMetric.extractPath(0, currentLength);

      // Draw line only (no blur in clipped sections)
      canvas.drawPath(extractPath, paint);
    }
  }

  void _drawArrowHeads(Canvas canvas, Size size) {
    final double offX = size.width * 0.08;
    final double offY = size.height * 0.08;

    // Draw primary arrow head
    _drawSingleArrowHead(
      canvas,
      size,
      primaryColor,
      primaryProgress,
      primaryStrokeWidth,
      offsetX: 0,
      offsetY: 0,
    );

    // Draw secondary arrow head
    _drawSingleArrowHead(
      canvas,
      size,
      secondaryColor,
      secondaryProgress,
      secondaryStrokeWidth,
      offsetX: -offX,
      offsetY: offY,
      extraLastRise: offY,
    );
  }

  void _drawSingleArrowHead(
    Canvas canvas,
    Size size,
    Color color,
    double progress,
    double strokeWidth, {
    required double offsetX,
    required double offsetY,
    double extraLastRise = 0.0,
  }) {
    if (progress <= 0) return;

    final path = Path();

    // Configuration
    const int repetitions = 4;
    double startX = size.width * 0.05 + offsetX;
    double startY = size.height * 0.85 + offsetY;

    double stepWidth = (size.width * 0.9) / repetitions;
    double stepHeight = size.height * 0.22;

    // Build complete path
    path.moveTo(startX, startY);

    double currentX = startX;
    double currentY = startY;

    for (int i = 0; i < repetitions; i++) {
      // Horizontal movement
      double horizontalMove = stepWidth;
      if (i == 0) {
        horizontalMove = stepWidth * 0.5;
      }

      currentX += horizontalMove;
      path.lineTo(currentX, currentY);

      // Vertical movement
      double verticalMove = stepHeight;
      if (i == repetitions - 1) {
        verticalMove = stepHeight * 0.5 + extraLastRise;
      }

      currentY -= verticalMove;
      path.lineTo(currentX, currentY);
    }

    final lastVerticalX = currentX;

    // Calculate path metrics
    final pathMetrics = path.computeMetrics();
    final pathMetric = pathMetrics.first;
    final totalLength = pathMetric.length;
    final currentLength = totalLength * progress;

    if (currentLength > 0) {
      // Draw arrow head at current position
      final tangent = pathMetric.getTangentForOffset(currentLength);
      if (tangent != null) {
        double arrowAngle = tangent.angle;
        if ((tangent.position.dx - lastVerticalX).abs() < 1.0) {
          arrowAngle = -math.pi / 2;
        }
        _drawArrowHead(
            canvas, tangent.position, arrowAngle, color, strokeWidth);
      }
    }
  }

  void _drawArrowHead(
    Canvas canvas,
    Offset position,
    double angle,
    Color color,
    double strokeWidth,
  ) {
    final arrowSize = strokeWidth * 1.5;

    double tipX = position.dx + arrowSize * math.cos(angle);
    double tipY = position.dy + arrowSize * math.sin(angle);

    final path = Path();
    path.moveTo(tipX, tipY);
    path.lineTo(
      position.dx - arrowSize * math.cos(angle + math.pi / 3),
      position.dy - arrowSize * math.sin(angle + math.pi / 3),
    );
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
  bool shouldRepaint(covariant GrowthTogetherPainter oldDelegate) {
    return oldDelegate.primaryProgress != primaryProgress ||
        oldDelegate.secondaryProgress != secondaryProgress ||
        oldDelegate.primaryStrokeWidth != primaryStrokeWidth ||
        oldDelegate.secondaryStrokeWidth != secondaryStrokeWidth ||
        oldDelegate.primaryColor != primaryColor ||
        oldDelegate.secondaryColor != secondaryColor;
  }
}
