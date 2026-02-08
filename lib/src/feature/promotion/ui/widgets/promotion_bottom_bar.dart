import 'dart:ui';

import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/views/apply_button_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PromotionBottomBar extends StatelessWidget {
  const PromotionBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24 : 32,
            vertical: 24,
          ),
          decoration: BoxDecoration(
            color: Colors.black
                .withOpacity(0.8), // Slight transparency for floating feel
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFF3B82F6).withOpacity(0.3),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Important for floating bar
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A&I 4기 모집 중",
                        style: TextStyle(
                          fontSize: isMobile ? 18 : 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "함께 성장할 동료를 찾습니다",
                        style: TextStyle(
                          fontSize: isMobile ? 12 : 14,
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                  ApplyButtonView()
                      .animate()
                      .shimmer(delay: 1500.ms, duration: 1000.ms),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
