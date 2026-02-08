import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// 위젯이 화면에 보일 때 애니메이션을 실행하는 위젯
class AnimateOnVisible extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration duration;
  final double visibilityThreshold;
  final List<Effect>? effects;
  final String? uniqueKey; // 고유 식별자

  const AnimateOnVisible({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 600),
    this.visibilityThreshold = 0.1, // 10% 보이면 트리거
    this.effects, // 커스텀 effects, null이면 기본 fadeIn + moveY
    this.uniqueKey, // 선택적 고유 key
  });

  @override
  State<AnimateOnVisible> createState() => _AnimateOnVisibleState();
}

class _AnimateOnVisibleState extends State<AnimateOnVisible> {
  bool _isVisible = false;
  late final String _detectorKey;

  @override
  void initState() {
    super.initState();
    // uniqueKey가 제공되면 사용, 아니면 widget의 key 또는 identityHashCode 사용
    _detectorKey = widget.uniqueKey ??
        (widget.key?.toString() ?? 'animate_${identityHashCode(this)}');
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(_detectorKey),
      onVisibilityChanged: _isVisible
          ? null
          : (info) {
              if (info.visibleFraction >= widget.visibilityThreshold) {
                setState(() {
                  _isVisible = true;
                });
              }
            },
      child: Animate(
        effects: widget.effects ??
            [
              FadeEffect(
                delay: widget.delay,
                duration: widget.duration,
              ),
              MoveEffect(
                delay: widget.delay,
                duration: widget.duration,
                begin: const Offset(0, 30),
                end: Offset.zero,
              ),
            ],
        target: _isVisible ? 1 : 0,
        child: widget.child,
      ),
    );
  }
}
