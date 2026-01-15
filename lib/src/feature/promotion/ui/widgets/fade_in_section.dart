import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FadeInSection extends StatefulWidget {
  final Widget child;
  final double delay;

  const FadeInSection({
    super.key,
    required this.child,
    this.delay = 0,
  });

  @override
  State<FadeInSection> createState() => _FadeInSectionState();
}

class _FadeInSectionState extends State<FadeInSection> {
  bool _isVisible = false;
  final Key _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: _key,
      onVisibilityChanged: (info) {
        if (!_isVisible && info.visibleFraction > 0.1) {
          setState(() {
            _isVisible = true;
          });
        }
      },
      // RepaintBoundary 추가: 애니메이션 시 전체 리페인트 방지
      child: RepaintBoundary(
        child: widget.child
            .animate(
              target: _isVisible ? 1 : 0,
            )
            .fade(
              duration: 800.ms,
              curve: Curves.easeOut,
            )
            .moveY(
              begin: 50,
              end: 0,
              curve: Curves.easeOut,
            ),
      ),
    );
  }
}
